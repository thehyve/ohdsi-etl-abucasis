cd src/test/end_to_end
R -f run_create_tests.R
python upload_test_files_to_source_schema.py
cd ../../../
python main.py -c config/config-test.yml
cd src/test/end_to_end
R -f run_evaluate_tests.R
cd ../../../