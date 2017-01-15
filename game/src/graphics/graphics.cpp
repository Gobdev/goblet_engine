// Include standard headers
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <math.h>
#include <string.h>

// Include GLEW
#include <GL/glew.h>

// Include GLFW
#include <GLFW/glfw3.h>
GLFWwindow* window;

// Include GLM
#define GLM_FORCE_RADIANS
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
using namespace glm;

#include <graphics/shader.hpp>
#include <graphics/texture.hpp>

GLfloat g_vertex_buffer_data[] = { 
        -1.0f,-1.0f, 0.0f, 
        -1.0f, 1.0f, 0.0f, 
         1.0f, 1.0f, 0.0f, 
        -1.0f,-1.0f, 0.0f, 
         1.0f,-1.0f, 0.0f, 
         1.0f, 1.0f, 0.0f, 
    };


double lastTime;
float x_dir = 0.0;
float y_dir = 0.0;
const float move_speed = 3.0;
glm::mat4 Model;

void change_x(float deltaTime){
    Model[3].x -= x_dir * deltaTime * move_speed;
    //for (int i = 0; i < 6; i++){
    //    g_vertex_buffer_data[i * 3] -= x_dir * deltaTime * move_speed;
    //}
}

void change_y(float deltaTime){
    Model[3].y -= y_dir * deltaTime * move_speed;
    //for (int i = 0; i < 6; i++){
    //    g_vertex_buffer_data[i * 3 + 1] -= y_dir * deltaTime * move_speed;
    //}
}

void move_king(float deltaTime){
    change_x(deltaTime);
    change_y(deltaTime);
}

static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    switch(action){
        case GLFW_PRESS:
            switch(key){
                case GLFW_KEY_W:
                    y_dir = -1.0f;
                    break;
                case GLFW_KEY_A:
                    x_dir = -1.0f;
                    break;
                case GLFW_KEY_S:
                    y_dir = 1.0f;
                    break;
                case GLFW_KEY_D:
                    x_dir = 1.0f;
                    break;
                case GLFW_KEY_ESCAPE:
                    glfwSetWindowShouldClose(window, GL_TRUE);
                    break;
            }
            break;
        case GLFW_RELEASE:
            switch(key){
                case GLFW_KEY_W:
                case GLFW_KEY_S:
                    y_dir = 0.0f;
                    break;
                case GLFW_KEY_A:
                case GLFW_KEY_D:
                    x_dir = 0.0f;
                    break;
                }
            break;
    }
}

int init_graphics( void )
{
    // Initialise GLFW
    if( !glfwInit() )
    {
        fprintf( stderr, "Failed to initialize GLFW\n" );
        return -1;
    }

    glfwWindowHint(GLFW_SAMPLES, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE); // To make MacOS happy; should not be needed
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    // Open a window and create its OpenGL context
    window = glfwCreateWindow( 1920, 1080, "Goblet 2: Reawakening", glfwGetPrimaryMonitor(), NULL);
    if( window == NULL ){
        fprintf( stderr, "Failed to open GLFW window.\n" );
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);
    glfwSwapInterval(1);

    // Initialize GLEW
    glewExperimental = true; // Needed for core profile
    if (glewInit() != GLEW_OK) {
        fprintf(stderr, "Failed to initialize GLEW\n");
        return -1;
    }

    // Set key callback.
    glfwSetKeyCallback(window, key_callback);

    // Dark blue background
    glClearColor(0.0f, 0.0f, 0.4f, 0.0f);

    // Enable depth test
    glEnable(GL_DEPTH_TEST);
    // Accept fragment if it closer to the camera than the former one
    glDepthFunc(GL_LESS); 

    GLuint VertexArrayID;
    glGenVertexArrays(1, &VertexArrayID);
    glBindVertexArray(VertexArrayID);

    // Create and compile our GLSL program from the shaders
    GLuint programID = LoadShaders( "graphics/shaders/TransformVertexShader.vertexshader", "graphics/shaders/TextureFragmentShader.fragmentshader" );

    // Get a handle for our "MVP" uniform
    GLuint MatrixID = glGetUniformLocation(programID, "MVP");

    // Projection matrix : 45° Field of View, 4:3 ratio, display range : 0.1 unit <-> 100 units
    glm::mat4 Projection = glm::perspective(90.0f * (float) M_PI / 180.0f, 4.0f / 3.0f, 0.1f, 10.0f);
    // Camera matrix
    glm::mat4 View       = glm::lookAt(
                                glm::vec3(0,0,-4), // Camera is at (4,3,3), in World Space
                                glm::vec3(0,0,0), // and looks at the origin
                                glm::vec3(0,1,0)  // Head is up (set to 0,-1,0 to look upside-down)
                           );
    // Model matrix : an identity matrix (model will be at the origin)
    Model      = glm::mat4(1.0f);
    // Our ModelViewProjection : multiplication of our 3 matrices
    glm::mat4 MVP        = Projection * View * Model; // Remember, matrix multiplication is the other way around

    // Load the texture using any two methods
    GLuint Texture = loadBMP_custom("graphics/images/spr_king_test.bmp");
    //GLuint Texture = loadDDS("graphics/images/uvtemplate.DDS");
    
    // Get a handle for our "myTextureSampler" uniform
    GLuint TextureID  = glGetUniformLocation(programID, "myTextureSampler");

    // Our vertices. Three consecutive floats give a 3D vertex; Three consecutive vertices give a triangle.
    // A cube has 6 faces with 2 triangles each, so this makes 6*2=12 triangles, and 12*3 vertices

    // Two UV coordinatesfor each vertex. They were created with Blender.
    static const GLfloat g_uv_buffer_data[] = { 
        0.0f, 0.0f, 
        0.0f, 1.0f, 
        1.0f, 1.0f, 
        0.0f, 0.0f, 
        1.0f, 0.0f, 
        1.0f, 1.0f, 
        };

    GLuint vertexbuffer;
    glGenBuffers(1, &vertexbuffer);
    glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
    glBufferData(GL_ARRAY_BUFFER, sizeof(g_vertex_buffer_data), g_vertex_buffer_data, GL_STATIC_DRAW);

    GLuint uvbuffer;
    glGenBuffers(1, &uvbuffer);
    glBindBuffer(GL_ARRAY_BUFFER, uvbuffer);
    glBufferData(GL_ARRAY_BUFFER, sizeof(g_uv_buffer_data), g_uv_buffer_data, GL_STATIC_DRAW);


    double lastFrame = glfwGetTime();
    float deltaTime;
    double currentTime = glfwGetTime();
    int frames = 0;
    do{
        frames++;
        lastTime = currentTime;
        currentTime = glfwGetTime();
        deltaTime = (float) (currentTime - lastTime);
        if (currentTime > lastFrame + 5.0f){
            std::cout << "FPS: " << frames / 5.0f << std::endl;
            lastFrame = currentTime;
            frames = 0;
        }
        move_king(deltaTime);
        lastTime = currentTime;
        glGenBuffers(1, &vertexbuffer);
        glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
        glBufferData(GL_ARRAY_BUFFER, sizeof(g_vertex_buffer_data), g_vertex_buffer_data, GL_STATIC_DRAW);
        //glm::mat4 ProjectionMatrix = Projection();
        //glm::mat4 ViewMatrix = getViewMatrix();
        //glm::mat4 ModelMatrix = glm::mat4(1.0);
        glm::mat4 MVP = Projection * View * Model;

        // Clear the screen
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        // Use our shader
        glUseProgram(programID);

        // Send our transformation to the currently bound shader, 
        // in the "MVP" uniform
        glUniformMatrix4fv(MatrixID, 1, GL_FALSE, &MVP[0][0]);

        // Bind our texture in Texture Unit 0
        glActiveTexture(GL_TEXTURE0);
        glBindTexture(GL_TEXTURE_2D, Texture);
        // Set our "myTextureSampler" sampler to user Texture Unit 0
        glUniform1i(TextureID, 0);

        // 1rst attribute buffer : vertices
        glEnableVertexAttribArray(0);
        glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
        glVertexAttribPointer(
            0,                  // attribute. No particular reason for 0, but must match the layout in the shader.
            3,                  // size
            GL_FLOAT,           // type
            GL_FALSE,           // normalized?
            0,                  // stride
            (void*)0            // array buffer offset
        );

        // 2nd attribute buffer : UVs
        glEnableVertexAttribArray(1);
        glBindBuffer(GL_ARRAY_BUFFER, uvbuffer);
        glVertexAttribPointer(
            1,                                // attribute. No particular reason for 1, but must match the layout in the shader.
            2,                                // size : U+V => 2
            GL_FLOAT,                         // type
            GL_FALSE,                         // normalized?
            0,                                // stride
            (void*)0                          // array buffer offset
        );

        // Draw the triangle !
        glDrawArrays(GL_TRIANGLES, 0, 2*3); // 12*3 indices starting at 0 -> 12 triangles

        glDisableVertexAttribArray(0);
        glDisableVertexAttribArray(1);

        // Swap buffers
        glfwSwapBuffers(window);
        glfwPollEvents();


    } // Loop while the window is open.
    while( glfwWindowShouldClose(window) == 0 );

    // Cleanup VBO and shader
    glDeleteBuffers(1, &vertexbuffer);
    glDeleteBuffers(1, &uvbuffer);
    glDeleteProgram(programID);
    glDeleteTextures(1, &TextureID);
    glDeleteVertexArrays(1, &VertexArrayID);

    // Close OpenGL window and terminate GLFW
    glfwTerminate();

    return 0;
}

