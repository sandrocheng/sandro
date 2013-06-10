.class final Lorg/antivirus/tuneup/bi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[D

.field final synthetic b:Lorg/antivirus/tuneup/bh;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/bh;[D)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iput-object p2, p0, Lorg/antivirus/tuneup/bi;->a:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const-wide/16 v2, 0x0

    const/4 v11, 0x1

    const-wide/high16 v9, 0x4059

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iget-object v0, v0, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->d(Lorg/antivirus/tuneup/TrafficMeterActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iget-object v0, v0, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->e(Lorg/antivirus/tuneup/TrafficMeterActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iget-object v0, v0, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->e(Lorg/antivirus/tuneup/TrafficMeterActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iget-object v0, v0, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->d(Lorg/antivirus/tuneup/TrafficMeterActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0900fe

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iget-boolean v0, v0, Lorg/antivirus/tuneup/bh;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/tuneup/bi;->a:[D

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iget-object v0, v0, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    const v1, 0x7f0800ee

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iget-object v0, v0, Lorg/antivirus/tuneup/bh;->b:Landroid/widget/TableLayout;

    invoke-virtual {v0, v8}, Landroid/widget/TableLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iget-object v0, v0, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    const v1, 0x7f0800f5

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090159

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iget-object v4, v4, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-virtual {v4}, Lorg/antivirus/tuneup/TrafficMeterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/antivirus/tuneup/bi;->a:[D

    aget-wide v5, v5, v11

    double-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iget-object v0, v0, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    const v1, 0x7f0800f2

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lorg/antivirus/tuneup/bi;->a:[D

    aget-wide v4, v1, v8

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataPlanNotificationThreshold()I

    move-result v1

    int-to-double v6, v1

    cmpl-double v1, v4, v6

    if-lez v1, :cond_5

    iget-object v1, p0, Lorg/antivirus/tuneup/bi;->a:[D

    aget-wide v4, v1, v8

    cmpg-double v1, v4, v9

    if-gez v1, :cond_5

    iget-object v0, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iget-object v0, v0, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    const v1, 0x7f0800f3

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    :cond_0
    :goto_1
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, p0, Lorg/antivirus/tuneup/bi;->a:[D

    aget-wide v4, v1, v8

    double-to-int v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iget-object v0, v0, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/tuneup/ba;->a(Landroid/content/Context;)Lorg/antivirus/tuneup/ba;

    invoke-static {}, Lorg/antivirus/tuneup/ba;->e()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iget-object v1, v1, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-virtual {v1}, Lorg/antivirus/tuneup/TrafficMeterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/antivirus/tuneup/ba;->a(Landroid/content/Context;)Lorg/antivirus/tuneup/ba;

    invoke-static {}, Lorg/antivirus/tuneup/ba;->f()I

    move-result v1

    const/4 v4, 0x2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iget-object v0, v0, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    const v5, 0x7f0800f7

    invoke-virtual {v0, v5}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    if-gtz v1, :cond_6

    const v1, 0x7f090167

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-static {}, Lorg/antivirus/AVSettings;->getDataQuotaBytes()J

    move-result-wide v0

    iget-object v4, p0, Lorg/antivirus/tuneup/bi;->a:[D

    aget-wide v4, v4, v11

    double-to-long v4, v4

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_7

    move-wide v1, v2

    :goto_3
    iget-object v0, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iget-object v0, v0, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    const v3, 0x7f0800f6

    invoke-virtual {v0, v3}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090127

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iget-object v4, v4, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-virtual {v4}, Lorg/antivirus/tuneup/TrafficMeterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iget-boolean v0, v0, Lorg/antivirus/tuneup/bh;->a:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iget-object v0, v0, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iget-object v0, v0, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->d(Lorg/antivirus/tuneup/TrafficMeterActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f09011b

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iget-object v0, v0, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->d(Lorg/antivirus/tuneup/TrafficMeterActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090182

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iget-object v0, v0, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->d(Lorg/antivirus/tuneup/TrafficMeterActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lorg/antivirus/tuneup/bi;->a:[D

    aget-wide v4, v1, v8

    cmpl-double v1, v4, v9

    if-ltz v1, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/bi;->b:Lorg/antivirus/tuneup/bh;

    iget-object v0, v0, Lorg/antivirus/tuneup/bh;->c:Lorg/antivirus/tuneup/TrafficMeterActivity;

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    goto/16 :goto_1

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f090141

    invoke-static {v6}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "[number]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    move-wide v1, v0

    goto/16 :goto_3
.end method
