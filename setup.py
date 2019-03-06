from setuptools import setup
import io


def long_description():
    with io.open('README.md', 'r', encoding='utf-8') as f:
        readme = f.read()
    return readme


setup(name='soppi',
      version='0.1.0',
      description='A simple programming language for understanding programming languages better',
      long_description=long_description(),
      long_description_content_type="text/markdown",
      url='https://github.com/shikshan/soppi',
      author='Omkar Patil',
      author_email="ospatil@gmail.com",
      license='MIT',
      packages=['soppi'],
      classifiers=[
          'Programming Language :: Python :: 3',
          'Programming Language :: Python :: 3.7'
      ],
      zip_safe=False)
