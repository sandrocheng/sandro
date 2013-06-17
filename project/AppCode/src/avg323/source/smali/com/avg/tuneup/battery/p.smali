.class public Lcom/avg/tuneup/battery/p;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/avg/tuneup/battery/p;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/avg/tuneup/battery/p;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/avg/tuneup/battery/p;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/avg/tuneup/battery/p;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;IIII)V
    .locals 6

    iput p5, p0, Lcom/avg/tuneup/battery/p;->b:I

    iput p3, p0, Lcom/avg/tuneup/battery/p;->a:I

    int-to-double v0, p2

    const-wide v2, 0x400e666666666666L

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x404e

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v1, p2

    const-wide v3, 0x400e666666666666L

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x404e

    rem-double/2addr v1, v3

    double-to-int v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v0, 0xa

    if-ge v1, v0, :cond_0

    const-string v0, "0"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/battery/p;->g:Ljava/lang/String;

    int-to-double v0, p2

    const-wide v2, 0x4002666666666666L

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x404e

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v1, p2

    const-wide v3, 0x4002666666666666L

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x404e

    rem-double/2addr v1, v3

    double-to-int v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v0, 0xa

    if-ge v1, v0, :cond_1

    const-string v0, "0"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/battery/p;->f:Ljava/lang/String;

    int-to-double v0, p2

    const-wide/high16 v2, 0x4018

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x404e

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v1, p2

    const-wide/high16 v3, 0x4018

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x404e

    rem-double/2addr v1, v3

    double-to-int v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v0, 0xa

    if-ge v1, v0, :cond_2

    const-string v0, "0"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/battery/p;->h:Ljava/lang/String;

    int-to-double v0, p2

    const-wide/high16 v2, 0x4008

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x404e

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v1, p2

    const-wide/high16 v3, 0x4008

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x404e

    rem-double/2addr v1, v3

    double-to-int v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v0, 0xa

    if-ge v1, v0, :cond_3

    const-string v0, "0"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/battery/p;->i:Ljava/lang/String;

    int-to-double v0, p2

    const-wide v2, 0x4016cccccccccccdL

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x404e

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v1, p2

    const-wide v3, 0x4016cccccccccccdL

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x404e

    rem-double/2addr v1, v3

    double-to-int v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v0, 0xa

    if-ge v1, v0, :cond_4

    const-string v0, "0"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/battery/p;->j:Ljava/lang/String;

    int-to-double v0, p2

    const-wide v2, 0x4066800000000000L

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x404e

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v1, p2

    const-wide v3, 0x4066800000000000L

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x404e

    rem-double/2addr v1, v3

    double-to-int v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v0, 0xa

    if-ge v1, v0, :cond_5

    const-string v0, "0"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/battery/p;->k:Ljava/lang/String;

    const-wide v0, 0x3ffccccccccccccdL

    int-to-double v2, p3

    const-wide/high16 v4, 0x4024

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4040

    add-double/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u00b0F | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v1, p3, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u00b0C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/battery/p;->c:Ljava/lang/String;

    packed-switch p5, :pswitch_data_0

    sget v0, Lcom/avg/a/g;->unknown:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/battery/p;->d:Ljava/lang/String;

    :goto_6
    packed-switch p4, :pswitch_data_1

    sget v0, Lcom/avg/a/g;->unknown:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/battery/p;->e:Ljava/lang/String;

    :goto_7
    return-void

    :cond_0
    const-string v0, ""

    goto/16 :goto_0

    :cond_1
    const-string v0, ""

    goto/16 :goto_1

    :cond_2
    const-string v0, ""

    goto/16 :goto_2

    :cond_3
    const-string v0, ""

    goto/16 :goto_3

    :cond_4
    const-string v0, ""

    goto/16 :goto_4

    :cond_5
    const-string v0, ""

    goto :goto_5

    :pswitch_0
    sget v0, Lcom/avg/a/g;->battery_charging:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/battery/p;->d:Ljava/lang/String;

    goto :goto_6

    :pswitch_1
    sget v0, Lcom/avg/a/g;->battery_discharging:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/battery/p;->d:Ljava/lang/String;

    goto :goto_6

    :pswitch_2
    sget v0, Lcom/avg/a/g;->battery_full:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/battery/p;->d:Ljava/lang/String;

    goto :goto_6

    :pswitch_3
    sget v0, Lcom/avg/a/g;->battery_not_charging:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/battery/p;->d:Ljava/lang/String;

    goto :goto_6

    :pswitch_4
    sget v0, Lcom/avg/a/g;->battery_dead:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/battery/p;->e:Ljava/lang/String;

    goto :goto_7

    :pswitch_5
    sget v0, Lcom/avg/a/g;->battery_good:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/battery/p;->e:Ljava/lang/String;

    goto :goto_7

    :pswitch_6
    sget v0, Lcom/avg/a/g;->battery_overvoltage:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/battery/p;->e:Ljava/lang/String;

    goto :goto_7

    :pswitch_7
    sget v0, Lcom/avg/a/g;->battery_overheat:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/battery/p;->e:Ljava/lang/String;

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public a()Z
    .locals 2

    iget v0, p0, Lcom/avg/tuneup/battery/p;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/p;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/p;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/p;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/p;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/p;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/p;->k:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/p;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/p;->e:Ljava/lang/String;

    return-object v0
.end method
