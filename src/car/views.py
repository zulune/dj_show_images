from django.shortcuts import render
from django.conf import settings
import os


# Create your views here.

def home(request):
    image_dir = os.path.join(settings.BASE_DIR, 'static/images/cars')
    image_files = os.listdir(image_dir)
    print(image_files)
    return render(request, 'home.html', {'image_files': image_files})
