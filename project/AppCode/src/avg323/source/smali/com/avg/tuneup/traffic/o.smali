.class Lcom/avg/tuneup/traffic/o;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/traffic/a;

.field private b:Landroid/view/LayoutInflater;

.field private c:I

.field private d:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Lcom/avg/tuneup/traffic/a;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/avg/tuneup/traffic/o;->a:Lcom/avg/tuneup/traffic/a;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/traffic/o;->b:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/avg/tuneup/traffic/a;->r(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/ui/general/c/i;->a(Landroid/view/Display;)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    div-int/lit16 v0, v0, 0xa0

    iput v0, p0, Lcom/avg/tuneup/traffic/o;->c:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/avg/tuneup/traffic/o;->d:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/avg/tuneup/traffic/o;->d:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/avg/tuneup/traffic/o;->c:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/avg/tuneup/traffic/o;->d:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/avg/tuneup/traffic/o;->c:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    return-void
.end method

.method private a(ILcom/avg/tuneup/traffic/q;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->d:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->d:Landroid/widget/CheckedTextView;

    new-instance v1, Lcom/avg/tuneup/traffic/p;

    invoke-direct {v1, p0, p2, p1}, Lcom/avg/tuneup/traffic/p;-><init>(Lcom/avg/tuneup/traffic/o;Lcom/avg/tuneup/traffic/q;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/avg/tuneup/traffic/o;->a:Lcom/avg/tuneup/traffic/a;

    invoke-virtual {v0}, Lcom/avg/tuneup/traffic/a;->i()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/avg/a/b;->traffic_quota_units:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/avg/tuneup/traffic/q;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/avg/tuneup/traffic/o;->a:Lcom/avg/tuneup/traffic/a;

    invoke-static {v2}, Lcom/avg/tuneup/traffic/a;->s(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;

    move-result-object v2

    sget v3, Lcom/avg/a/g;->traffic_quota:I

    invoke-virtual {v2, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/avg/tuneup/traffic/q;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avg/tuneup/traffic/o;->a:Lcom/avg/tuneup/traffic/a;

    invoke-static {v3}, Lcom/avg/tuneup/traffic/a;->t(Lcom/avg/tuneup/traffic/a;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/avg/tuneup/traffic/o;->a:Lcom/avg/tuneup/traffic/a;

    invoke-static {v3}, Lcom/avg/tuneup/traffic/a;->e(Lcom/avg/tuneup/traffic/a;)I

    move-result v3

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->a:Landroid/widget/ImageView;

    sget v1, Lcom/avg/a/d;->more_details:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/avg/tuneup/traffic/o;->a:Lcom/avg/tuneup/traffic/a;

    invoke-virtual {v0}, Lcom/avg/tuneup/traffic/a;->i()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/avg/a/b;->traffic_cycle_units:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/avg/tuneup/traffic/q;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/avg/tuneup/traffic/o;->a:Lcom/avg/tuneup/traffic/a;

    invoke-static {v2}, Lcom/avg/tuneup/traffic/a;->u(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;

    move-result-object v2

    sget v3, Lcom/avg/a/g;->traffic_package_cycle:I

    invoke-virtual {v2, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/avg/tuneup/traffic/q;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avg/tuneup/traffic/o;->a:Lcom/avg/tuneup/traffic/a;

    invoke-static {v3}, Lcom/avg/tuneup/traffic/a;->v(Lcom/avg/tuneup/traffic/a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/avg/tuneup/traffic/o;->a:Lcom/avg/tuneup/traffic/a;

    invoke-static {v3}, Lcom/avg/tuneup/traffic/a;->f(Lcom/avg/tuneup/traffic/a;)I

    move-result v3

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->a:Landroid/widget/ImageView;

    sget v1, Lcom/avg/a/d;->more_details:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/o;->a:Lcom/avg/tuneup/traffic/a;

    invoke-static {v1}, Lcom/avg/tuneup/traffic/a;->w(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    sget v2, Lcom/avg/a/g;->traffic_billing_date:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->c:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/avg/tuneup/traffic/o;->a:Lcom/avg/tuneup/traffic/a;

    invoke-static {v3}, Lcom/avg/tuneup/traffic/a;->c(Lcom/avg/tuneup/traffic/a;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->a:Landroid/widget/ImageView;

    sget v1, Lcom/avg/a/d;->more_details:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/avg/tuneup/traffic/o;->a:Lcom/avg/tuneup/traffic/a;

    invoke-virtual {v0}, Lcom/avg/tuneup/traffic/a;->i()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/avg/a/b;->traffic_refresh_rate_arr:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/avg/tuneup/traffic/q;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/avg/tuneup/traffic/o;->a:Lcom/avg/tuneup/traffic/a;

    invoke-static {v2}, Lcom/avg/tuneup/traffic/a;->x(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;

    move-result-object v2

    sget v3, Lcom/avg/a/g;->traffic_refresh_rate:I

    invoke-virtual {v2, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/avg/tuneup/traffic/q;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/avg/tuneup/traffic/o;->a:Lcom/avg/tuneup/traffic/a;

    invoke-static {v2}, Lcom/avg/tuneup/traffic/a;->y(Lcom/avg/tuneup/traffic/a;)I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->a:Landroid/widget/ImageView;

    sget v1, Lcom/avg/a/d;->more_details:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->d:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->d:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/o;->a:Lcom/avg/tuneup/traffic/a;

    invoke-static {v1}, Lcom/avg/tuneup/traffic/a;->z(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    sget v2, Lcom/avg/a/g;->traffic_restart_count:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->d:Landroid/widget/CheckedTextView;

    invoke-static {}, Lcom/avg/tuneup/j;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/o;->a:Lcom/avg/tuneup/traffic/a;

    invoke-static {v1}, Lcom/avg/tuneup/traffic/a;->A(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    sget v2, Lcom/avg/a/g;->traffic_usage_reaches:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/avg/tuneup/j;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/avg/tuneup/traffic/o;->a:Lcom/avg/tuneup/traffic/a;

    invoke-static {v2}, Lcom/avg/tuneup/traffic/a;->B(Lcom/avg/tuneup/traffic/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->a:Landroid/widget/ImageView;

    sget v1, Lcom/avg/a/d;->more_details:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/o;->a:Lcom/avg/tuneup/traffic/a;

    invoke-static {v1}, Lcom/avg/tuneup/traffic/a;->C(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    sget v2, Lcom/avg/a/g;->off:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_6
    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->d:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->d:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/o;->a:Lcom/avg/tuneup/traffic/a;

    invoke-static {v1}, Lcom/avg/tuneup/traffic/a;->D(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    sget v2, Lcom/avg/a/g;->traffic_ongoing_notification:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/avg/tuneup/traffic/q;->d:Landroid/widget/CheckedTextView;

    invoke-static {}, Lcom/avg/tuneup/j;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_0

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

.method private a(IZ)V
    .locals 5

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/avg/tuneup/j;->g()Z

    move-result v0

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Lcom/avg/tuneup/j;->b(Z)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/avg/tuneup/j;->m()Z

    move-result v0

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Lcom/avg/tuneup/j;->d(Z)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/o;->a:Lcom/avg/tuneup/traffic/a;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/a;->E(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const-string v2, "data_usage_settings"

    const-string v3, "show_data_usage_notification"

    if-eqz p2, :cond_1

    const-string v0, "on"

    :goto_1
    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string v0, "off"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/avg/tuneup/traffic/o;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/avg/tuneup/traffic/o;->a(IZ)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/16 v3, 0x8

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/traffic/o;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/avg/a/f;->battery_state_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/avg/tuneup/traffic/q;

    invoke-direct {v1, p0}, Lcom/avg/tuneup/traffic/q;-><init>(Lcom/avg/tuneup/traffic/o;)V

    sget v0, Lcom/avg/a/e;->img_more_details:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/avg/tuneup/traffic/q;->a:Landroid/widget/ImageView;

    sget v0, Lcom/avg/a/e;->tv_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/avg/tuneup/traffic/q;->b:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/avg/tuneup/traffic/q;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/avg/tuneup/traffic/o;->d:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/avg/a/e;->tv_description:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/avg/tuneup/traffic/q;->c:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/avg/tuneup/traffic/q;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/avg/tuneup/traffic/o;->d:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/avg/a/e;->ctv_option:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, v1, Lcom/avg/tuneup/traffic/q;->d:Landroid/widget/CheckedTextView;

    iget-object v0, v1, Lcom/avg/tuneup/traffic/q;->d:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Lcom/avg/tuneup/traffic/o;->d:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/avg/a/e;->tv_value:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/avg/a/e;->img_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/avg/a/e;->cb_state:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/avg/tuneup/traffic/o;->a(ILcom/avg/tuneup/traffic/q;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/tuneup/traffic/q;

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
