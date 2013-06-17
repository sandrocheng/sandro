.class Lcom/avg/tuneup/traffic/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[D

.field final synthetic b:Lcom/avg/tuneup/traffic/ae;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/traffic/ae;[D)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iput-object p2, p0, Lcom/avg/tuneup/traffic/af;->a:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-wide/16 v2, 0x0

    const/4 v11, 0x1

    const-wide/high16 v9, 0x4059

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v0, v0, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->l(Lcom/avg/tuneup/traffic/y;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v0, v0, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->a(Lcom/avg/tuneup/traffic/y;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v0, v0, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->a(Lcom/avg/tuneup/traffic/y;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v0, v0, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->l(Lcom/avg/tuneup/traffic/y;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v1, v1, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v1}, Lcom/avg/tuneup/traffic/y;->m(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    sget v4, Lcom/avg/a/g;->traffic_no_values:I

    invoke-virtual {v1, v4}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-boolean v0, v0, Lcom/avg/tuneup/traffic/ae;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/af;->a:[D

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v0, v0, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->q(Lcom/avg/tuneup/traffic/y;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/avg/a/e;->bottom_traffic_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v0, v0, Lcom/avg/tuneup/traffic/ae;->b:Landroid/widget/TableLayout;

    invoke-virtual {v0, v8}, Landroid/widget/TableLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v0, v0, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->q(Lcom/avg/tuneup/traffic/y;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/avg/a/e;->tv_traffic_stats:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v4, v4, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v4}, Lcom/avg/tuneup/traffic/y;->r(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v4

    sget v5, Lcom/avg/a/g;->used:I

    invoke-virtual {v4, v5}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v4, v4, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v4}, Lcom/avg/tuneup/traffic/y;->s(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/avg/tuneup/traffic/af;->a:[D

    aget-wide v5, v5, v11

    double-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v0, v0, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->q(Lcom/avg/tuneup/traffic/y;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/avg/a/e;->pb_traffic_green:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/af;->a:[D

    aget-wide v4, v1, v8

    invoke-static {}, Lcom/avg/tuneup/j;->j()I

    move-result v1

    int-to-double v6, v1

    cmpl-double v1, v4, v6

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/avg/tuneup/traffic/af;->a:[D

    aget-wide v4, v1, v8

    cmpg-double v1, v4, v9

    if-gez v1, :cond_5

    iget-object v0, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v0, v0, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->q(Lcom/avg/tuneup/traffic/y;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/avg/a/e;->pb_traffic_orange:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    :cond_0
    :goto_1
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, p0, Lcom/avg/tuneup/traffic/af;->a:[D

    aget-wide v4, v1, v8

    double-to-int v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v0, v0, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->t(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/tuneup/traffic/s;->a(Landroid/content/Context;)Lcom/avg/tuneup/traffic/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/tuneup/traffic/s;->f()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v1, v1, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v1}, Lcom/avg/tuneup/traffic/y;->u(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/avg/tuneup/traffic/s;->a(Landroid/content/Context;)Lcom/avg/tuneup/traffic/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avg/tuneup/traffic/s;->g()I

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

    iget-object v0, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v0, v0, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->q(Lcom/avg/tuneup/traffic/y;)Landroid/view/View;

    move-result-object v0

    sget v5, Lcom/avg/a/e;->tv_time_until:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    if-gtz v1, :cond_6

    iget-object v1, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v1, v1, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v1}, Lcom/avg/tuneup/traffic/y;->v(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    sget v4, Lcom/avg/a/g;->till_midnight:I

    invoke-virtual {v1, v4}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-static {}, Lcom/avg/tuneup/j;->c()J

    move-result-wide v0

    iget-object v4, p0, Lcom/avg/tuneup/traffic/af;->a:[D

    aget-wide v4, v4, v11

    double-to-long v4, v4

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_7

    move-wide v1, v2

    :goto_3
    iget-object v0, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v0, v0, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->q(Lcom/avg/tuneup/traffic/y;)Landroid/view/View;

    move-result-object v0

    sget v3, Lcom/avg/a/e;->tv_traffic_total:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v4, v4, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v4}, Lcom/avg/tuneup/traffic/y;->x(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v4

    sget v5, Lcom/avg/a/g;->free:I

    invoke-virtual {v4, v5}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v4, v4, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v4}, Lcom/avg/tuneup/traffic/y;->y(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

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
    iget-object v0, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-boolean v0, v0, Lcom/avg/tuneup/traffic/ae;->a:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v0, v0, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->n(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/tuneup/traffic/s;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v0, v0, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->l(Lcom/avg/tuneup/traffic/y;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v1, v1, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v1}, Lcom/avg/tuneup/traffic/y;->o(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    sget v4, Lcom/avg/a/g;->traffic_data_since_reboot:I

    invoke-virtual {v1, v4}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v0, v0, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->l(Lcom/avg/tuneup/traffic/y;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v1, v1, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v1}, Lcom/avg/tuneup/traffic/y;->p(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    sget v4, Lcom/avg/a/g;->traffic_data_wifi_since_reboot:I

    invoke-virtual {v1, v4}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v0, v0, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->l(Lcom/avg/tuneup/traffic/y;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/avg/tuneup/traffic/af;->a:[D

    aget-wide v4, v1, v8

    cmpl-double v1, v4, v9

    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v0, v0, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->q(Lcom/avg/tuneup/traffic/y;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/avg/a/e;->pb_traffic_red:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    goto/16 :goto_1

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/avg/tuneup/traffic/af;->b:Lcom/avg/tuneup/traffic/ae;

    iget-object v6, v6, Lcom/avg/tuneup/traffic/ae;->c:Lcom/avg/tuneup/traffic/y;

    invoke-static {v6}, Lcom/avg/tuneup/traffic/y;->w(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v6

    sget v7, Lcom/avg/a/g;->until:I

    invoke-virtual {v6, v7}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "[number]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
