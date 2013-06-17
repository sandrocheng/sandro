.class public Lcom/avg/tuneup/traffic/a;
.super Lcom/avg/tuneup/h;


# instance fields
.field private Y:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private a:Ljava/util/Calendar;

.field private b:I

.field private c:F

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/avg/tuneup/traffic/o;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/avg/tuneup/h;-><init>()V

    new-instance v0, Lcom/avg/tuneup/traffic/b;

    invoke-direct {v0, p0}, Lcom/avg/tuneup/traffic/b;-><init>(Lcom/avg/tuneup/traffic/a;)V

    iput-object v0, p0, Lcom/avg/tuneup/traffic/a;->Y:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic A(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic B(Lcom/avg/tuneup/traffic/a;)I
    .locals 1

    iget v0, p0, Lcom/avg/tuneup/traffic/a;->g:I

    return v0
.end method

.method static synthetic C(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic D(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic E(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private F()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/avg/a/f;->dlg_traffic_pkg_size:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    sget v0, Lcom/avg/a/e;->tv_data_package_size:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->traffic_quota_size:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/avg/a/e;->et_quota_size:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/avg/tuneup/j;->b()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    or-int/lit16 v0, v0, 0x2000

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setInputType(I)V

    new-array v8, v10, [Landroid/text/InputFilter;

    new-instance v0, Lcom/avg/tuneup/traffic/r;

    const-wide/16 v2, 0x0

    const-wide v4, 0x411f400000000000L

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/avg/tuneup/traffic/r;-><init>(Lcom/avg/tuneup/traffic/a;DD)V

    aput-object v0, v8, v9

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    sget v0, Lcom/avg/a/e;->sp_quota_units:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/b;->traffic_quota_units:I

    const v3, 0x1090008

    invoke-static {v1, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    sget v2, Lcom/avg/a/f;->simple_spinner_dropdown_item:I

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget v1, p0, Lcom/avg/tuneup/traffic/a;->b:I

    invoke-virtual {v0, v1, v10}, Landroid/widget/Spinner;->setSelection(IZ)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v3, Lcom/avg/a/g;->traffic_quota:I

    invoke-virtual {v2, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget v2, Lcom/avg/a/d;->dlg_ic_package_size:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    sget v2, Lcom/avg/a/g;->ok:I

    new-instance v3, Lcom/avg/tuneup/traffic/h;

    invoke-direct {v3, p0, v0, v6}, Lcom/avg/tuneup/traffic/h;-><init>(Lcom/avg/tuneup/traffic/a;Landroid/widget/Spinner;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/avg/a/g;->cancel:I

    new-instance v2, Lcom/avg/tuneup/traffic/i;

    invoke-direct {v2, p0}, Lcom/avg/tuneup/traffic/i;-><init>(Lcom/avg/tuneup/traffic/a;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private G()V
    .locals 11

    const/16 v10, 0x8

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/avg/a/f;->dlg_traffic_pkg_size:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    sget v0, Lcom/avg/a/e;->tv_data_package_size:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/avg/a/e;->et_quota_size:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/avg/tuneup/traffic/a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    new-array v8, v0, [Landroid/text/InputFilter;

    new-instance v0, Lcom/avg/tuneup/traffic/r;

    const-wide/high16 v2, 0x3ff0

    const-wide/high16 v4, 0x4059

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/avg/tuneup/traffic/r;-><init>(Lcom/avg/tuneup/traffic/a;DD)V

    aput-object v0, v8, v9

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-static {}, Lcom/avg/tuneup/j;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_0
    sget v0, Lcom/avg/a/e;->tv_percent:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lcom/avg/a/e;->cb_warn_usage:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-static {}, Lcom/avg/tuneup/j;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v1, Lcom/avg/tuneup/traffic/j;

    invoke-direct {v1, p0, v6}, Lcom/avg/tuneup/traffic/j;-><init>(Lcom/avg/tuneup/traffic/a;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v1, Lcom/avg/a/e;->sp_quota_units:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v3, Lcom/avg/a/g;->traffic_data_usage_warning:I

    invoke-virtual {v2, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget v2, Lcom/avg/a/d;->dlg_ic_package_cycle:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    sget v2, Lcom/avg/a/g;->ok:I

    new-instance v3, Lcom/avg/tuneup/traffic/k;

    invoke-direct {v3, p0, v6, v0}, Lcom/avg/tuneup/traffic/k;-><init>(Lcom/avg/tuneup/traffic/a;Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/avg/a/g;->cancel:I

    new-instance v2, Lcom/avg/tuneup/traffic/l;

    invoke-direct {v2, p0}, Lcom/avg/tuneup/traffic/l;-><init>(Lcom/avg/tuneup/traffic/a;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private H()V
    .locals 10

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/avg/a/f;->dlg_traffic_pkg_size:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    sget v0, Lcom/avg/a/e;->tv_data_package_size:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->traffic_period:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/avg/a/e;->et_quota_size:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/avg/tuneup/traffic/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    new-array v8, v0, [Landroid/text/InputFilter;

    new-instance v0, Lcom/avg/tuneup/traffic/r;

    const-wide/high16 v2, 0x3ff0

    const-wide/high16 v4, 0x4059

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/avg/tuneup/traffic/r;-><init>(Lcom/avg/tuneup/traffic/a;DD)V

    aput-object v0, v8, v9

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    sget v0, Lcom/avg/a/e;->sp_quota_units:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/b;->traffic_cycle_units:I

    const v3, 0x1090008

    invoke-static {v1, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    sget v2, Lcom/avg/a/f;->simple_spinner_dropdown_item:I

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget v1, p0, Lcom/avg/tuneup/traffic/a;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v3, Lcom/avg/a/g;->traffic_package_cycle:I

    invoke-virtual {v2, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget v2, Lcom/avg/a/d;->dlg_ic_package_cycle:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    sget v2, Lcom/avg/a/g;->ok:I

    new-instance v3, Lcom/avg/tuneup/traffic/m;

    invoke-direct {v3, p0, v6, v0}, Lcom/avg/tuneup/traffic/m;-><init>(Lcom/avg/tuneup/traffic/a;Landroid/widget/EditText;Landroid/widget/Spinner;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/avg/a/g;->cancel:I

    new-instance v2, Lcom/avg/tuneup/traffic/n;

    invoke-direct {v2, p0}, Lcom/avg/tuneup/traffic/n;-><init>(Lcom/avg/tuneup/traffic/a;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private I()V
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->traffic_refresh_rate:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/avg/a/d;->dlg_ic_refresh_rate:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/avg/ui/general/b/e;

    iget-object v2, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    iget v3, p0, Lcom/avg/tuneup/traffic/a;->f:I

    iget-object v4, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v4}, Lcom/avg/ui/general/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/avg/a/b;->traffic_refresh_rate_arr:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/ui/general/b/e;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iget v2, p0, Lcom/avg/tuneup/traffic/a;->f:I

    new-instance v3, Lcom/avg/tuneup/traffic/c;

    invoke-direct {v3, p0}, Lcom/avg/tuneup/traffic/c;-><init>(Lcom/avg/tuneup/traffic/a;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private J()V
    .locals 12

    const/16 v11, 0x64

    const/4 v10, 0x5

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v0, ""

    iget v3, p0, Lcom/avg/tuneup/traffic/a;->c:F

    iget v1, p0, Lcom/avg/tuneup/traffic/a;->b:I

    if-ne v1, v6, :cond_7

    const/16 v1, 0x400

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-double v3, v1

    const-wide/high16 v8, 0x3ff0

    cmpg-double v1, v3, v8

    if-ltz v1, :cond_0

    const-wide v8, 0x411f400000000000L

    cmpl-double v1, v3, v8

    if-lez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v3, Lcom/avg/a/g;->traffic_quota_illegal:I

    invoke-virtual {v1, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget v1, p0, Lcom/avg/tuneup/traffic/a;->d:I

    if-gt v1, v11, :cond_2

    iget v1, p0, Lcom/avg/tuneup/traffic/a;->d:I

    if-ge v1, v6, :cond_10

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v3, Lcom/avg/a/g;->traffic_illegal_cycle_value:I

    invoke-virtual {v1, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v7

    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {v4, v5, v8, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    iget v3, p0, Lcom/avg/tuneup/traffic/a;->e:I

    packed-switch v3, :pswitch_data_0

    :goto_2
    :pswitch_0
    iget v3, p0, Lcom/avg/tuneup/traffic/a;->d:I

    mul-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v2, v3}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual {v4, v10, v6}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Lcom/avg/tuneup/traffic/a;->a:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/avg/tuneup/traffic/a;->a:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/avg/tuneup/traffic/a;->a:Ljava/util/Calendar;

    invoke-direct {p0, v3, v4}, Lcom/avg/tuneup/traffic/a;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v6, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-direct {v3, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v4, Lcom/avg/a/g;->traffic_illegal_billing_date:I

    invoke-virtual {v3, v4}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "[date1]"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[date2]"

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-static {}, Lcom/avg/tuneup/j;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/avg/tuneup/traffic/a;->g:I

    if-lt v0, v6, :cond_5

    iget v0, p0, Lcom/avg/tuneup/traffic/a;->g:I

    if-le v0, v11, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->traffic_illegal_notification_threshold:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v3, Lcom/avg/a/g;->traffic_illegal_values:I

    invoke-virtual {v2, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->ok:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/avg/tuneup/traffic/d;

    invoke-direct {v2, p0}, Lcom/avg/tuneup/traffic/d;-><init>(Lcom/avg/tuneup/traffic/a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_3
    return-void

    :cond_7
    move v1, v6

    goto/16 :goto_0

    :pswitch_1
    const/4 v2, 0x6

    goto/16 :goto_2

    :pswitch_2
    const/4 v2, 0x3

    goto/16 :goto_2

    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Lcom/avg/tuneup/j;->k()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Lcom/avg/tuneup/j;->k()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/avg/tuneup/traffic/a;->a:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_9
    iget v1, p0, Lcom/avg/tuneup/traffic/a;->c:F

    invoke-static {}, Lcom/avg/tuneup/j;->b()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_a

    iget v1, p0, Lcom/avg/tuneup/traffic/a;->b:I

    invoke-static {}, Lcom/avg/tuneup/j;->d()I

    move-result v2

    if-ne v1, v2, :cond_a

    iget v1, p0, Lcom/avg/tuneup/traffic/a;->d:I

    invoke-static {}, Lcom/avg/tuneup/j;->f()I

    move-result v2

    if-ne v1, v2, :cond_a

    iget v1, p0, Lcom/avg/tuneup/traffic/a;->e:I

    invoke-static {}, Lcom/avg/tuneup/j;->e()I

    move-result v2

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/avg/tuneup/traffic/a;->a:Ljava/util/Calendar;

    invoke-direct {p0, v1, v0}, Lcom/avg/tuneup/traffic/a;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_a
    move v0, v6

    :goto_4
    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/avg/tuneup/traffic/a;->i:Z

    if-nez v0, :cond_c

    iget v0, p0, Lcom/avg/tuneup/traffic/a;->c:F

    iget v1, p0, Lcom/avg/tuneup/traffic/a;->g:I

    iget v2, p0, Lcom/avg/tuneup/traffic/a;->d:I

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v5, Lcom/avg/a/g;->traffic_reset_settings_title:I

    invoke-virtual {v4, v5}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v5, Lcom/avg/a/g;->traffic_reset_settings_body:I

    invoke-virtual {v4, v5}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v5, Lcom/avg/a/g;->traffic_reset_settings:I

    invoke-virtual {v4, v5}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/avg/tuneup/traffic/e;

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/avg/tuneup/traffic/e;-><init>(Lcom/avg/tuneup/traffic/a;FII)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v5, Lcom/avg/a/g;->traffic_keep_settings:I

    invoke-virtual {v4, v5}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/avg/tuneup/traffic/f;

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/avg/tuneup/traffic/f;-><init>(Lcom/avg/tuneup/traffic/a;FII)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_b
    :goto_5
    invoke-static {v6}, Lcom/avg/tuneup/j;->a(Z)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    const/16 v1, 0x61a8

    const/16 v2, 0x8

    invoke-static {}, Lcom/avg/tuneup/traffic/widget/TrafficWidgetPlugin;->k()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/avg/toolkit/f;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    goto/16 :goto_3

    :cond_c
    iget-boolean v0, p0, Lcom/avg/tuneup/traffic/a;->i:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/tuneup/traffic/s;->a(Landroid/content/Context;)Lcom/avg/tuneup/traffic/s;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/a;->a:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/avg/tuneup/traffic/s;->a(J)V

    :cond_d
    iget v1, p0, Lcom/avg/tuneup/traffic/a;->c:F

    iget v2, p0, Lcom/avg/tuneup/traffic/a;->b:I

    iget v3, p0, Lcom/avg/tuneup/traffic/a;->g:I

    iget v4, p0, Lcom/avg/tuneup/traffic/a;->d:I

    iget v5, p0, Lcom/avg/tuneup/traffic/a;->e:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/avg/tuneup/traffic/a;->a(FIIII)V

    iget-boolean v0, p0, Lcom/avg/tuneup/traffic/a;->i:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->traffic_settings_reset_confirmation:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_6
    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->finish()V

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->settings_saved:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6

    :cond_f
    move v0, v7

    goto/16 :goto_4

    :cond_10
    move-object v1, v0

    move v0, v6

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/avg/tuneup/traffic/a;F)F
    .locals 0

    iput p1, p0, Lcom/avg/tuneup/traffic/a;->c:F

    return p1
.end method

.method static synthetic a(Lcom/avg/tuneup/traffic/a;)Lcom/avg/tuneup/traffic/o;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->h:Lcom/avg/tuneup/traffic/o;

    return-object v0
.end method

.method static synthetic a(Lcom/avg/tuneup/traffic/a;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/traffic/a;->a:Ljava/util/Calendar;

    return-object p1
.end method

.method private a(FIIII)V
    .locals 4

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/avg/tuneup/j;->a(F)V

    invoke-static {p2}, Lcom/avg/tuneup/j;->a(I)V

    invoke-static {}, Lcom/avg/tuneup/j;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/avg/tuneup/j;->e(I)V

    :cond_0
    if-ne p2, v1, :cond_2

    const/16 v0, 0x400

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v2, 0x4980

    mul-float/2addr v0, v2

    float-to-long v2, v0

    invoke-static {v2, v3}, Lcom/avg/tuneup/j;->a(J)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "__SAD"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    const/16 v2, 0x2af8

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v0}, Lcom/avg/toolkit/f;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    invoke-static {}, Lcom/avg/tuneup/j;->m()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    invoke-static {p4}, Lcom/avg/tuneup/j;->c(I)V

    invoke-static {p5}, Lcom/avg/tuneup/j;->b(I)V

    iget v0, p0, Lcom/avg/tuneup/traffic/a;->f:I

    invoke-static {v0}, Lcom/avg/tuneup/j;->d(I)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/avg/tuneup/j;->b(J)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/avg/tuneup/traffic/a;FIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/avg/tuneup/traffic/a;->a(FIIII)V

    return-void
.end method

.method static synthetic a(Lcom/avg/tuneup/traffic/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/avg/tuneup/traffic/a;->c(I)V

    return-void
.end method

.method private a(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/avg/tuneup/traffic/a;I)I
    .locals 0

    iput p1, p0, Lcom/avg/tuneup/traffic/a;->b:I

    return p1
.end method

.method static synthetic b(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/avg/tuneup/traffic/a;I)I
    .locals 0

    iput p1, p0, Lcom/avg/tuneup/traffic/a;->g:I

    return p1
.end method

.method static synthetic c(Lcom/avg/tuneup/traffic/a;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->a:Ljava/util/Calendar;

    return-object v0
.end method

.method private c(I)V
    .locals 5

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/avg/tuneup/traffic/a;->F()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/avg/tuneup/traffic/a;->H()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/avg/tuneup/traffic/a;->b(I)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/avg/tuneup/traffic/a;->I()V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "data_usage_settings"

    const-string v2, "refresh_rate"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/avg/tuneup/traffic/a;->G()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic d(Lcom/avg/tuneup/traffic/a;I)I
    .locals 0

    iput p1, p0, Lcom/avg/tuneup/traffic/a;->d:I

    return p1
.end method

.method static synthetic d(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/avg/tuneup/traffic/a;)I
    .locals 1

    iget v0, p0, Lcom/avg/tuneup/traffic/a;->b:I

    return v0
.end method

.method static synthetic e(Lcom/avg/tuneup/traffic/a;I)I
    .locals 0

    iput p1, p0, Lcom/avg/tuneup/traffic/a;->e:I

    return p1
.end method

.method static synthetic f(Lcom/avg/tuneup/traffic/a;)I
    .locals 1

    iget v0, p0, Lcom/avg/tuneup/traffic/a;->e:I

    return v0
.end method

.method static synthetic f(Lcom/avg/tuneup/traffic/a;I)I
    .locals 0

    iput p1, p0, Lcom/avg/tuneup/traffic/a;->f:I

    return p1
.end method

.method static synthetic g(Lcom/avg/tuneup/traffic/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/avg/tuneup/traffic/a;->i:Z

    return v0
.end method

.method static synthetic h(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic i(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic j(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic k(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic l(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic m(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic n(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic o(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic p(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic q(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic r(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic s(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic t(Lcom/avg/tuneup/traffic/a;)F
    .locals 1

    iget v0, p0, Lcom/avg/tuneup/traffic/a;->c:F

    return v0
.end method

.method static synthetic u(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic v(Lcom/avg/tuneup/traffic/a;)I
    .locals 1

    iget v0, p0, Lcom/avg/tuneup/traffic/a;->d:I

    return v0
.end method

.method static synthetic w(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic x(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic y(Lcom/avg/tuneup/traffic/a;)I
    .locals 1

    iget v0, p0, Lcom/avg/tuneup/traffic/a;->f:I

    return v0
.end method

.method static synthetic z(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v2, 0x0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/avg/a/f;->data_plan_settings:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/avg/a/e;->listView:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v2, p0, Lcom/avg/tuneup/traffic/a;->h:Lcom/avg/tuneup/traffic/o;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/avg/tuneup/traffic/g;

    invoke-direct {v2, p0}, Lcom/avg/tuneup/traffic/g;-><init>(Lcom/avg/tuneup/traffic/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->settings:I

    invoke-virtual {v0, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v3, Lcom/avg/a/g;->traffic:I

    invoke-virtual {v2, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/avg/tuneup/traffic/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/tuneup/traffic/a;->J()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/avg/tuneup/h;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "new_activation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avg/tuneup/traffic/a;->i:Z

    :cond_0
    new-instance v0, Lcom/avg/tuneup/traffic/o;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, p0, v1}, Lcom/avg/tuneup/traffic/o;-><init>(Lcom/avg/tuneup/traffic/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avg/tuneup/traffic/a;->h:Lcom/avg/tuneup/traffic/o;

    invoke-static {}, Lcom/avg/tuneup/j;->b()F

    move-result v0

    iput v0, p0, Lcom/avg/tuneup/traffic/a;->c:F

    invoke-static {}, Lcom/avg/tuneup/j;->d()I

    move-result v0

    iput v0, p0, Lcom/avg/tuneup/traffic/a;->b:I

    invoke-static {}, Lcom/avg/tuneup/j;->j()I

    move-result v0

    iput v0, p0, Lcom/avg/tuneup/traffic/a;->g:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/GregorianCalendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Ljava/util/GregorianCalendar;-><init>(III)V

    iput-object v1, p0, Lcom/avg/tuneup/traffic/a;->a:Ljava/util/Calendar;

    invoke-static {}, Lcom/avg/tuneup/j;->k()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/avg/tuneup/traffic/a;->a:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    invoke-static {}, Lcom/avg/tuneup/j;->f()I

    move-result v0

    iput v0, p0, Lcom/avg/tuneup/traffic/a;->d:I

    invoke-static {}, Lcom/avg/tuneup/j;->e()I

    move-result v0

    iput v0, p0, Lcom/avg/tuneup/traffic/a;->e:I

    invoke-static {}, Lcom/avg/tuneup/j;->h()I

    move-result v0

    iput v0, p0, Lcom/avg/tuneup/traffic/a;->f:I

    return-void
.end method

.method public b(I)V
    .locals 7

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-static {}, Lcom/avg/tuneup/j;->k()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    iget-object v2, p0, Lcom/avg/tuneup/traffic/a;->Y:Landroid/app/DatePickerDialog$OnDateSetListener;

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/avg/tuneup/traffic/a;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->traffic_billing_date:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget v1, Lcom/avg/a/d;->dlg_ic_start_date:I

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setIcon(I)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
