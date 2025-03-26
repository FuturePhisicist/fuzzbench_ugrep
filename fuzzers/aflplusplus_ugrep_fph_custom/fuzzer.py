import os
import subprocess

def build():
    pass

def run(input_corpus, output_corpus, target_binary):
    # os.environ['AFL_CUSTOM_MUTATOR_ONLY'] = '1'

    os.environ['AFL_PYTHON_MODULE'] = 'regex_mutator_my1'
    
    # os.environ['PYTHONPATH'] = '/out'

    cmd = [
        'afl-fuzz',
        '-i', input_corpus,
        '-o', output_corpus,
        # '-M', 'fuzzer01',
        # '-V', '18060',
        '--',
        target_binary,
        '-nr', '--color=never',
        '-e', '@@',
        '/out/text_corpus/*'
    ]

    print("[*] Running command:", " ".join(cmd))
    subprocess.check_call(cmd)
