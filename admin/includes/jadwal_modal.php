<!-- Add -->
<div class="modal fade" id="addnew">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title"><b>Tambah Jadwal Baru</b></h4>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" method="POST" action="jadwal_add.php">
                <div class="form-group">
                    <label for="description1" class="col-sm-3 control-label">Tanggal</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="description1" name="description1" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="description2" class="col-sm-3 control-label">Waktu</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="description2" name="description2" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="description3" class="col-sm-3 control-label">Nama Organisasi & UKM</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="description3" name="description3" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="description4" class="col-sm-3 control-label">Nama Pemilihan</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="description4" name="description4" required>
                    </div>
                </div>
                <!-- <div class="form-group">
                    <label for="max_vote" class="col-sm-3 control-label">Batas Vote</label>

                    <div class="col-sm-9">
                      <input type="number" class="form-control" id="max_vote" name="max_vote" required>
                    </div>
                </div> -->
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Tutup</button>
              <button type="submit" class="btn btn-primary btn-flat" name="add"><i class="fa fa-save"></i> Simpan</button>
              </form>
            </div>
        </div>
    </div>
</div>

<!-- Edit -->
<div class="modal fade" id="edit">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title"><b>Edit Jadwal</b></h4>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" method="POST" action="jadwal_edit.php">
                <input type="hidden" class="id" name="id">
                <div class="form-group">
                    <label for="edit_description1" class="col-sm-3 control-label">Tanggal</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="edit_description1" name="description1">
                    </div> 
                </div>
                <div class="form-group">
                    <label for="edit_description2" class="col-sm-3 control-label">Waktu</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="edit_description2" name="description2">
                    </div>
                </div>
                <div class="form-group">
                    <label for="edit_description3" class="col-sm-3 control-label">Nama Organisasi & UKM</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="edit_description3" name="description3">
                    </div>
                </div>
                <div class="form-group">
                    <label for="edit_description4" class="col-sm-3 control-label">Nama Pemilihan</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="edit_description4" name="description4">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Tutup</button>
              <button type="submit" class="btn btn-success btn-flat" name="edit"><i class="fa fa-check-square-o"></i> Perbarui</button>
              </form>
            </div>
        </div>
    </div>
</div>

<!-- Delete -->
<div class="modal fade" id="delete">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title"><b>Deleting...</b></h4>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" method="POST" action="jadwal_delete.php">
                <input type="hidden" class="id" name="id">
                <div class="text-center">
                    <p>DELETE JADWAL</p>
                    <h2 class="bold description"></h2>
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
              <button type="submit" class="btn btn-danger btn-flat" name="delete"><i class="fa fa-trash"></i> Delete</button>
              </form>
            </div>
        </div>
    </div>
</div>



     