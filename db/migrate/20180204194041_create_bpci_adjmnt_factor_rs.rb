class CreateBpciAdjmntFactorRs < ActiveRecord::Migration[5.1]
  def change
    create_table :bpci_adjmnt_factor_rs do |t|
      t.string :PROVIDER_CCN
      t.integer :TOP_25TH_PERC_FY15
      t.integer :TOP_25TH_PERC_FY16
      t.decimal :HAC_ADJMNT_FACTOR
      t.decimal :LTCH_IRF_ADJMNT_FACTOR
      t.decimal :FR12_APU_REDUCTION
      t.decimal :FR15_APU_REDUCTION
      t.decimal :FR16_APU_REDUCTION
      t.decimal :APU_IQR_ADJMNT_FACTOR_FY15
      t.decimal :APU_IQR_ADJMNT_FACTOR_FY16

      t.timestamps
    end
  end
end
