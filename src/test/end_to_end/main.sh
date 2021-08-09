cd src/test/end_to_end
R -f run_create_tests.R
cd ../../../
python main.py -c config/config-test.yml
cd src/test/end_to_end
R -f run_evaluate_tests.R
cd ../../../