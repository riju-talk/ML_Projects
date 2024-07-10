import cv2
import numpy as np

image = cv2.imread("landscape.jpg")
cv2.imshow("Image", image)

# Wait for a key press and close the image window
cv2.waitKey(0)
cv2.destroyAllWindows()

print(image.shape)