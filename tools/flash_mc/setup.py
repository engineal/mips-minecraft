from setuptools import setup, find_packages

setup(
    name='flash_mc',
    version='0.1.0',
    packages=find_packages(),
    entry_points={
        'console_scripts': [
            'flash_mc = flash_mc.__main__:main'
        ]
    })
