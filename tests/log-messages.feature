# Tests for the expected workflow log messages

Feature: Log messages

    As a researcher,
    I want to be able to see the log messages of my workflow execution,
    So that I can verify that the workflow ran correctly.

    Scenario: The compilation step has produced the expected messages
        When the workflow is finished
        Then the engine logs should contain
            """
            Publishing step:0, cmd: g++ -v -O3 -o dimuonSpectrum dimuonSpectrum.C `root-config --cflags --libs`
            """

    Scenario: The data analysis step has produced the expected messages
        When the workflow is finished
        Then the job logs for the "run" step should contain
            """
            Events with exactly two muons: pass=31104343   all=61540413   -- eff=50.54 % cumulative eff=50.54 %
            Muons with opposite charge: pass=24067843   all=31104343   -- eff=77.38 % cumulative eff=39.11 %
            """
        And the job logs for the "run" step should contain
            """
            Info in <TCanvas::Print>: pdf file dimuonSpectrum.pdf has been created
            """
        And the engine logs should contain "Publishing step:1, cmd: ./dimuonSpectrum"
