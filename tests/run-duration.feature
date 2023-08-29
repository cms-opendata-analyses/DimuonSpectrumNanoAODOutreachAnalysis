# Tests for the workflow execution duration time

Feature: Run duration

    As a researcher,
    I want to verify that my workflow finishes in a reasonable amount of time,
    so that I can stay assured that there are no unusual problems with computing resources.

    Scenario: The workflow terminates in a reasonable amount of time
        When the workflow execution completes
        Then the workflow run duration should be less than 5 minutes

    Scenario: The compilation step takes a reasonable amount of time
        When the workflow is finished
        Then the duration of the step "compile" should be less than 3 minutes

    Scenario: The step in which the analysis is run takes a reasonable amount of time
        When the workflow is finished
        Then the duration of the step "run" should be less than 3 minutes
