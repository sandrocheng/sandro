.class public Lorg/antivirus/tuneup/DataPlanSettingsActivity;
.super Lorg/antivirus/ui/BaseToolActivity;


# instance fields
.field private a:Ljava/util/Calendar;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Lorg/antivirus/tuneup/ap;

.field private i:Z

.field private j:Landroid/app/DatePickerDialog$OnDateSetListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolActivity;-><init>()V

    new-instance v0, Lorg/antivirus/tuneup/ac;

    invoke-direct {v0, p0}, Lorg/antivirus/tuneup/ac;-><init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)V

    iput-object v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->j:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic a(Lorg/antivirus/tuneup/DataPlanSettingsActivity;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->a:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic a(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)Lorg/antivirus/tuneup/ap;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->h:Lorg/antivirus/tuneup/ap;

    return-object v0
.end method

.method private a(IIIII)V
    .locals 6

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/antivirus/AVSettings;->setDataQuota(I)V

    invoke-static {p2}, Lorg/antivirus/AVSettings;->setDataQuotaUnits(I)V

    invoke-static {}, Lorg/antivirus/AVSettings;->isQuotaWarningNotificationOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lorg/antivirus/AVSettings;->setDataPlanNotificationThreshold(I)V

    :cond_0
    int-to-long v2, p1

    if-ne p2, v1, :cond_2

    const/16 v0, 0x400

    :goto_0
    int-to-long v4, v0

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x100000

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Lorg/antivirus/AVSettings;->setDataQuotaBytes(J)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lorg/antivirus/AVService;->SERVICE_IDENTIFIER:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "__SAC"

    const/16 v3, 0x6f

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "__SAD"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Lorg/antivirus/AVSettings;->isQuotaOngoingNotification()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    invoke-static {p4}, Lorg/antivirus/AVSettings;->setDataCycleValues(I)V

    invoke-static {p5}, Lorg/antivirus/AVSettings;->setDataCycleUnits(I)V

    iget v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->f:I

    invoke-static {v0}, Lorg/antivirus/AVSettings;->setDataRefreshRate(I)V

    iget-object v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/antivirus/AVSettings;->setDataPlanBillingDate(J)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lorg/antivirus/tuneup/DataPlanSettingsActivity;I)V
    .locals 7

    const v3, 0x7f080090

    const v1, 0x7f030014

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901a0

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080091

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataQuota()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-array v1, v6, [Landroid/text/InputFilter;

    new-instance v3, Lorg/antivirus/tuneup/as;

    const v4, 0x7d000

    invoke-direct {v3, p0, v4}, Lorg/antivirus/tuneup/as;-><init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;I)V

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v1, 0x7f080093

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    const v3, 0x7f0a0004

    const v4, 0x1090008

    invoke-static {p0, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v3

    const v4, 0x7f03002d

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget v3, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->b:I

    invoke-virtual {v1, v3, v6}, Landroid/widget/Spinner;->setSelection(IZ)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090113

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0200bd

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090003

    new-instance v4, Lorg/antivirus/tuneup/ai;

    invoke-direct {v4, p0, v1, v0}, Lorg/antivirus/tuneup/ai;-><init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;Landroid/widget/Spinner;Landroid/widget/EditText;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f090004

    new-instance v1, Lorg/antivirus/tuneup/aj;

    invoke-direct {v1, p0}, Lorg/antivirus/tuneup/aj;-><init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901a1

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080091

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->d:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-array v1, v6, [Landroid/text/InputFilter;

    new-instance v3, Lorg/antivirus/tuneup/as;

    const/16 v4, 0x64

    invoke-direct {v3, p0, v4}, Lorg/antivirus/tuneup/as;-><init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;I)V

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v1, 0x7f080093

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    const v3, 0x7f0a0005

    const v4, 0x1090008

    invoke-static {p0, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v3

    const v4, 0x7f03002d

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget v3, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->e:I

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090154

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0200bc

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090003

    new-instance v4, Lorg/antivirus/tuneup/an;

    invoke-direct {v4, p0, v0, v1}, Lorg/antivirus/tuneup/an;-><init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;Landroid/widget/EditText;Landroid/widget/Spinner;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f090004

    new-instance v1, Lorg/antivirus/tuneup/ao;

    invoke-direct {v1, p0}, Lorg/antivirus/tuneup/ao;-><init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0, v5}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->showDialog(I)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090155

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0200be

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lorg/antivirus/tuneup/at;

    iget v2, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->f:I

    const v3, 0x7f0a0006

    invoke-static {v3}, Lorg/antivirus/Strings;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lorg/antivirus/tuneup/at;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iget v2, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->f:I

    new-instance v3, Lorg/antivirus/tuneup/ad;

    invoke-direct {v3, p0}, Lorg/antivirus/tuneup/ad;-><init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const-string v0, "data_usage_settings"

    const-string v1, "refresh_rate"

    invoke-static {p0, v0, v1, v4}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080091

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->g:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-array v1, v6, [Landroid/text/InputFilter;

    new-instance v3, Lorg/antivirus/tuneup/as;

    const/16 v4, 0x64

    invoke-direct {v3, p0, v4}, Lorg/antivirus/tuneup/as;-><init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;I)V

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-static {}, Lorg/antivirus/AVSettings;->isQuotaWarningNotificationOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_0
    const v1, 0x7f080092

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f08008f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-static {}, Lorg/antivirus/AVSettings;->isQuotaWarningNotificationOn()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v3, Lorg/antivirus/tuneup/ak;

    invoke-direct {v3, p0, v0}, Lorg/antivirus/tuneup/ak;-><init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v3, 0x7f080093

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0901d2

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0200bc

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090003

    new-instance v4, Lorg/antivirus/tuneup/al;

    invoke-direct {v4, p0, v0, v1}, Lorg/antivirus/tuneup/al;-><init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f090004

    new-instance v1, Lorg/antivirus/tuneup/am;

    invoke-direct {v1, p0}, Lorg/antivirus/tuneup/am;-><init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

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

.method static synthetic a(Lorg/antivirus/tuneup/DataPlanSettingsActivity;IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->a(IIIII)V

    return-void
.end method

.method private static a(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lorg/antivirus/tuneup/DataPlanSettingsActivity;I)I
    .locals 0

    iput p1, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->b:I

    return p1
.end method

.method static synthetic b(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->a:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic c(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->b:I

    return v0
.end method

.method static synthetic c(Lorg/antivirus/tuneup/DataPlanSettingsActivity;I)I
    .locals 0

    iput p1, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->c:I

    return p1
.end method

.method static synthetic d(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->e:I

    return v0
.end method

.method static synthetic d(Lorg/antivirus/tuneup/DataPlanSettingsActivity;I)I
    .locals 0

    iput p1, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->g:I

    return p1
.end method

.method static synthetic e(Lorg/antivirus/tuneup/DataPlanSettingsActivity;I)I
    .locals 0

    iput p1, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->d:I

    return p1
.end method

.method static synthetic e(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->i:Z

    return v0
.end method

.method static synthetic f(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->c:I

    return v0
.end method

.method static synthetic f(Lorg/antivirus/tuneup/DataPlanSettingsActivity;I)I
    .locals 0

    iput p1, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->e:I

    return p1
.end method

.method static synthetic g(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->d:I

    return v0
.end method

.method static synthetic g(Lorg/antivirus/tuneup/DataPlanSettingsActivity;I)I
    .locals 0

    iput p1, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->f:I

    return p1
.end method

.method static synthetic h(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->f:I

    return v0
.end method

.method static synthetic i(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)I
    .locals 1

    iget v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->g:I

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->finish()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/antivirus/ui/BaseToolActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->finish()V

    goto :goto_0
.end method

.method protected final onBack()V
    .locals 11

    const/16 v10, 0x64

    const/4 v9, 0x5

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v0, ""

    iget v3, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->c:I

    iget v1, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->b:I

    if-ne v1, v6, :cond_7

    const/16 v1, 0x400

    :goto_0
    mul-int/2addr v1, v3

    if-lez v1, :cond_0

    const v3, 0x7d000

    if-le v1, v3, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090117

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget v1, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->d:I

    if-gt v1, v10, :cond_2

    iget v1, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->d:I

    if-gtz v1, :cond_f

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090156

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

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

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {v4, v5, v8, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    iget v3, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->e:I

    packed-switch v3, :pswitch_data_0

    :goto_2
    :pswitch_0
    iget v3, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->d:I

    mul-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v2, v3}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual {v4, v9, v6}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->a:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->a:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->a:Ljava/util/Calendar;

    invoke-static {v3, v4}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

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

    const v3, 0x7f090118

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

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
    invoke-static {}, Lorg/antivirus/AVSettings;->isQuotaWarningNotificationOn()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->g:I

    if-lez v0, :cond_5

    iget v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->g:I

    if-le v0, v10, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090119

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

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

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09011a

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090003

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/antivirus/tuneup/ae;

    invoke-direct {v2, p0}, Lorg/antivirus/tuneup/ae;-><init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)V

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

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataPlanBillingDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataPlanBillingDate()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->a:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_9
    iget v1, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->c:I

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataQuota()I

    move-result v2

    if-ne v1, v2, :cond_a

    iget v1, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->b:I

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataQuotaUnits()I

    move-result v2

    if-ne v1, v2, :cond_a

    iget v1, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->d:I

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataCycleValues()I

    move-result v2

    if-ne v1, v2, :cond_a

    iget v1, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->e:I

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataCycleUnits()I

    move-result v2

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->a:Ljava/util/Calendar;

    invoke-static {v1, v0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_a
    move v0, v6

    :goto_4
    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->i:Z

    if-nez v0, :cond_b

    iget v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->c:I

    iget v1, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->g:I

    iget v2, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->d:I

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090162

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f090163

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f090164

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/antivirus/tuneup/af;

    invoke-direct {v5, p0, v0, v1, v2}, Lorg/antivirus/tuneup/af;-><init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f090165

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/antivirus/tuneup/ag;

    invoke-direct {v5, p0, v0, v1, v2}, Lorg/antivirus/tuneup/ag;-><init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_5
    invoke-static {v6}, Lorg/antivirus/AVSettings;->setTrafficCounterOn(Z)V

    invoke-static {p0}, Lorg/antivirus/widget/a/k;->a(Landroid/content/Context;)Lorg/antivirus/widget/a/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/antivirus/widget/a/k;->b(Landroid/os/Bundle;)Z

    goto/16 :goto_3

    :cond_b
    iget-boolean v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->i:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/tuneup/ba;->a(Landroid/content/Context;)Lorg/antivirus/tuneup/ba;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->a:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/tuneup/ba;->a(J)V

    :cond_c
    iget v1, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->c:I

    iget v2, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->b:I

    iget v3, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->g:I

    iget v4, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->d:I

    iget v5, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->e:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->a(IIIII)V

    iget-boolean v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->i:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090166

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_6
    invoke-virtual {p0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->finish()V

    goto :goto_5

    :cond_d
    invoke-virtual {p0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09015b

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6

    :cond_e
    move v0, v7

    goto/16 :goto_4

    :cond_f
    move-object v1, v0

    move v0, v6

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->setContentView(I)V

    const v2, 0x7f020022

    const v3, 0x7f020023

    const v0, 0x7f090136

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->a(ZIILjava/lang/String;Z)V

    invoke-virtual {p0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "new_activation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->i:Z

    :cond_0
    new-instance v0, Lorg/antivirus/tuneup/ap;

    invoke-direct {v0, p0, p0}, Lorg/antivirus/tuneup/ap;-><init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->h:Lorg/antivirus/tuneup/ap;

    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v2, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->h:Lorg/antivirus/tuneup/ap;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lorg/antivirus/tuneup/ah;

    invoke-direct {v2, p0}, Lorg/antivirus/tuneup/ah;-><init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataQuota()I

    move-result v0

    iput v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->c:I

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataQuotaUnits()I

    move-result v0

    iput v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->b:I

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataPlanNotificationThreshold()I

    move-result v0

    iput v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->g:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {v2, v1, v3, v0}, Ljava/util/GregorianCalendar;-><init>(III)V

    iput-object v2, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->a:Ljava/util/Calendar;

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataPlanBillingDate()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->a:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    invoke-static {}, Lorg/antivirus/AVSettings;->getDataCycleValues()I

    move-result v0

    iput v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->d:I

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataCycleUnits()I

    move-result v0

    iput v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->e:I

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataRefreshRate()I

    move-result v0

    iput v0, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->f:I

    invoke-static {}, Lorg/antivirus/AVSettings;->shouldShowActivationScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/ui/main/ActivationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataPlanBillingDate()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->j:Landroid/app/DatePickerDialog$OnDateSetListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setCanceledOnTouchOutside(Z)V

    const v1, 0x7f090114

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setIcon(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
