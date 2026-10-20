from setuptools import setup, find_packages

setup(
    name='apiverve_piglatin',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Pig Latin translates English text into Pig Latin while preserving designated words from transformation. Pass any sentence along with an optional exclusion list to receive the encoded phrase and confirmed skipped terms.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/piglatin?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
