import shutil, os.path

class Attachments:
    def __init__(self, input_dir: str, output_dir: str):
        self.output_dir = output_dir
        self._create_sulfilters_zip(input_dir)
        self._copy_base_filter_file(input_dir)

    def _create_sulfilters_zip(self, input_dir: str):
        filepath = self.output_dir + "/Subfilters"
        shutil.make_archive(filepath, 'zip', input_dir)
        self.subfilters_filepath = os.path.abspath(filepath + ".zip")

    def _copy_base_filter_file(self, input_dir: str):
        input_filepath = input_dir + "/Base.filter"
        filter_filepath = self.output_dir + "/Ajos.filter"
        shutil.copyfile(input_filepath, filter_filepath)
        self.filter_filepath = os.path.abspath(filter_filepath)

    def delete(self):
        shutil.rmtree(self.output_dir)