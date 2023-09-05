# Tests for the presence of files in the workspace

Feature: Workspace files

    As a researcher,
    I want to make sure that my workflow produces expected files,
    and that all the necessary input files are present in the workspace,
    so that I can be sure that the workflow outputs are correct.

    Scenario: The workspace contains all the relevant input files
        When the workflow execution completes
        Then the workspace should include "dimuonSpectrum.C"

    Scenario: The analysis produces the expected output file
        When the workflow is finished
	Then the workspace should include "dimuonSpectrum.pdf"
	And the size of the file "dimuonSpectrum.pdf" should be between "180 KiB" and "190 KiB"
        And all the outputs should be included in the workspace
