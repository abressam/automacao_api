* Settings *
Documentation       Keywords and variables for general uses
Library             RequestsLibrary
Library             Collections
Library             OperatingSystem
Library             ./../library/python_library.py
Resource            ./../variables/variables.robot
Resource            ./../fixtures/dynamic/dynamic.robot
Resource            ./../common/common.robot

* Keywords *
Open Session
    Create Session          serverest        ${BASE_URL}