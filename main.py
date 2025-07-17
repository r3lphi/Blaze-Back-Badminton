import pygame

# initial setup
pygame.init()

# globals
gScreen = pygame.display.set_mode((1920, 1080))
gClock = pygame.time.Clock()
gRunning = True

# runtime
while gRunning:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            gRunning = False

    gScreen.fill("blue")

    pygame.display.flip()
    gClock.tick(60)

pygame.quit()
