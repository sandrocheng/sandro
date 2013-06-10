.class final Lorg/antivirus/tuneup/ap;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

.field private b:Landroid/view/LayoutInflater;

.field private c:I


# direct methods
.method public constructor <init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lorg/antivirus/tuneup/ap;->a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/tuneup/ap;->b:Landroid/view/LayoutInflater;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/compatibility/DonutTools;->getDisplayDensity(Landroid/view/Display;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit16 v0, v0, 0xa0

    iput v0, p0, Lorg/antivirus/tuneup/ap;->c:I

    return-void
.end method

.method static synthetic a(Lorg/antivirus/tuneup/ap;IZ)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lorg/antivirus/AVSettings;->isDataCountRestart()Z

    move-result v0

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Lorg/antivirus/AVSettings;->setDataCountRestart(Z)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lorg/antivirus/AVSettings;->isQuotaOngoingNotification()Z

    move-result v0

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Lorg/antivirus/AVSettings;->setQuotaOngoingNotification(Z)V

    iget-object v1, p0, Lorg/antivirus/tuneup/ap;->a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    const-string v2, "data_usage_settings"

    const-string v3, "show_data_usage_notification"

    if-eqz p2, :cond_1

    const-string v0, "on"

    :goto_1
    invoke-static {v1, v2, v3, v0}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "off"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v5, 0x1

    const v6, 0x7f0200ec

    const/4 v4, 0x0

    const/16 v3, 0x8

    if-nez p2, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/ap;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v0, p0, Lorg/antivirus/tuneup/ap;->c:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    new-instance v1, Lorg/antivirus/tuneup/ar;

    invoke-direct {v1, p0}, Lorg/antivirus/tuneup/ar;-><init>(Lorg/antivirus/tuneup/ap;)V

    const v0, 0x7f08006b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lorg/antivirus/tuneup/ar;->a:Landroid/widget/ImageView;

    const v0, 0x7f08006c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/antivirus/tuneup/ar;->b:Landroid/widget/TextView;

    const v0, 0x7f08006d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/antivirus/tuneup/ar;->c:Landroid/widget/TextView;

    const v0, 0x7f08006f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lorg/antivirus/tuneup/ar;->d:Landroid/widget/CheckBox;

    iget-object v0, v1, Lorg/antivirus/tuneup/ar;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f080070

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v1, v0, Lorg/antivirus/tuneup/ar;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lorg/antivirus/tuneup/ar;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, v0, Lorg/antivirus/tuneup/ar;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lorg/antivirus/tuneup/ar;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lorg/antivirus/tuneup/ar;->d:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, v0, Lorg/antivirus/tuneup/ar;->d:Landroid/widget/CheckBox;

    new-instance v2, Lorg/antivirus/tuneup/aq;

    invoke-direct {v2, p0, v0, p1}, Lorg/antivirus/tuneup/aq;-><init>(Lorg/antivirus/tuneup/ap;Lorg/antivirus/tuneup/ar;I)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    packed-switch p1, :pswitch_data_0

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/tuneup/ar;

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lorg/antivirus/tuneup/ap;->a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-virtual {v1}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/antivirus/tuneup/ar;->b:Landroid/widget/TextView;

    const v3, 0x7f090113

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/antivirus/tuneup/ar;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/antivirus/tuneup/ap;->a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-static {v4}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->f(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/antivirus/tuneup/ap;->a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-static {v4}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->c(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)I

    move-result v4

    aget-object v1, v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lorg/antivirus/tuneup/ar;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lorg/antivirus/tuneup/ap;->a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-virtual {v1}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/antivirus/tuneup/ar;->b:Landroid/widget/TextView;

    const v3, 0x7f090154

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/antivirus/tuneup/ar;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/antivirus/tuneup/ap;->a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-static {v4}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->g(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/antivirus/tuneup/ap;->a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-static {v4}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->d(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)I

    move-result v4

    aget-object v1, v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lorg/antivirus/tuneup/ar;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v1, v0, Lorg/antivirus/tuneup/ar;->b:Landroid/widget/TextView;

    const v2, 0x7f090114

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/antivirus/tuneup/ar;->c:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v5, v2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lorg/antivirus/tuneup/ap;->a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-static {v4}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->b(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lorg/antivirus/tuneup/ar;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v1, p0, Lorg/antivirus/tuneup/ap;->a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-virtual {v1}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/antivirus/tuneup/ar;->b:Landroid/widget/TextView;

    const v3, 0x7f090155

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/antivirus/tuneup/ar;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/antivirus/tuneup/ap;->a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-static {v3}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->h(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lorg/antivirus/tuneup/ar;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v1, v0, Lorg/antivirus/tuneup/ar;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lorg/antivirus/tuneup/ar;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lorg/antivirus/tuneup/ar;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lorg/antivirus/tuneup/ar;->d:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, v0, Lorg/antivirus/tuneup/ar;->d:Landroid/widget/CheckBox;

    const v2, 0x7f090157

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lorg/antivirus/tuneup/ar;->d:Landroid/widget/CheckBox;

    invoke-static {}, Lorg/antivirus/AVSettings;->isDataCountRestart()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, v0, Lorg/antivirus/tuneup/ar;->b:Landroid/widget/TextView;

    const v2, 0x7f090116

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lorg/antivirus/AVSettings;->isQuotaWarningNotificationOn()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/antivirus/tuneup/ar;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/antivirus/tuneup/ap;->a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-static {v3}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->i(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, v0, Lorg/antivirus/tuneup/ar;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_1
    iget-object v1, v0, Lorg/antivirus/tuneup/ar;->c:Landroid/widget/TextView;

    const v2, 0x7f090001

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_6
    iget-object v1, v0, Lorg/antivirus/tuneup/ar;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lorg/antivirus/tuneup/ar;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lorg/antivirus/tuneup/ar;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lorg/antivirus/tuneup/ar;->d:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, v0, Lorg/antivirus/tuneup/ar;->d:Landroid/widget/CheckBox;

    const v2, 0x7f09012d

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lorg/antivirus/tuneup/ar;->d:Landroid/widget/CheckBox;

    invoke-static {}, Lorg/antivirus/AVSettings;->isQuotaOngoingNotification()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final isEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
