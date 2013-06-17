.class public Lcom/antivirus/ui/tablet/c;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I


# instance fields
.field private f:Landroid/content/Context;

.field private g:[Lcom/antivirus/ui/tablet/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/antivirus/ui/tablet/c;->a:I

    sput v0, Lcom/antivirus/ui/tablet/c;->b:I

    sput v0, Lcom/antivirus/ui/tablet/c;->c:I

    sput v0, Lcom/antivirus/ui/tablet/c;->d:I

    sput v0, Lcom/antivirus/ui/tablet/c;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/antivirus/ui/tablet/c;->f:Landroid/content/Context;

    sget v0, Lcom/antivirus/ui/tablet/c;->e:I

    new-array v0, v0, [Lcom/antivirus/ui/tablet/b;

    iput-object v0, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v0, Lcom/antivirus/ui/tablet/c;->c:I

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v1, Lcom/antivirus/ui/tablet/c;->c:I

    new-instance v2, Lcom/antivirus/ui/tablet/b;

    const v3, 0x7f0900e9

    invoke-static {p1, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/antivirus/ui/tablet/b;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    :cond_0
    sget v0, Lcom/antivirus/ui/tablet/c;->a:I

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v1, Lcom/antivirus/ui/tablet/c;->a:I

    new-instance v2, Lcom/antivirus/ui/tablet/b;

    const v3, 0x7f09020f

    invoke-static {p1, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/antivirus/ui/tablet/b;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    :cond_1
    sget v0, Lcom/antivirus/ui/tablet/c;->b:I

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v1, Lcom/antivirus/ui/tablet/c;->b:I

    new-instance v2, Lcom/antivirus/ui/tablet/b;

    const v3, 0x7f0900c6

    invoke-static {p1, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/antivirus/ui/tablet/b;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    :cond_2
    sget v0, Lcom/antivirus/ui/tablet/c;->d:I

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v1, Lcom/antivirus/ui/tablet/c;->d:I

    new-instance v2, Lcom/antivirus/ui/tablet/b;

    const v3, 0x7f090210

    invoke-static {p1, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/antivirus/ui/tablet/b;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    :cond_3
    return-void
.end method

.method public static a(Lcom/antivirus/core/scanners/h;)Lcom/antivirus/ui/tablet/e;
    .locals 6

    const-wide/16 v4, 0x0

    if-nez p0, :cond_0

    sget-object v0, Lcom/antivirus/ui/tablet/e;->a:Lcom/antivirus/ui/tablet/e;

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/antivirus/core/scanners/h;->b:J

    invoke-virtual {p0}, Lcom/antivirus/core/scanners/h;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/antivirus/ui/tablet/e;->c:Lcom/antivirus/ui/tablet/e;

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    cmp-long v3, v4, v0

    if-nez v3, :cond_2

    sget-object v0, Lcom/antivirus/ui/tablet/e;->a:Lcom/antivirus/ui/tablet/e;

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    cmp-long v0, v4, v0

    if-gez v0, :cond_3

    sget-object v0, Lcom/antivirus/ui/tablet/e;->b:Lcom/antivirus/ui/tablet/e;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/antivirus/ui/tablet/e;->a:Lcom/antivirus/ui/tablet/e;

    goto :goto_0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/antivirus/ui/tablet/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/antivirus/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v1, Lcom/antivirus/ui/tablet/c;->c:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v2, Lcom/antivirus/ui/tablet/c;->c:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/antivirus/ui/tablet/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/antivirus/ui/tablet/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v1, Lcom/antivirus/ui/tablet/c;->c:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v2, Lcom/antivirus/ui/tablet/c;->c:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/antivirus/ui/tablet/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/tablet/c;->f:Landroid/content/Context;

    const v3, 0x7f090225

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/antivirus/ui/tablet/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 11

    const v10, 0x7f090223

    const/4 v9, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/avg/tuneup/traffic/s;->e()Z

    move-result v3

    if-eqz p1, :cond_7

    const-string v0, "level"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "status"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Lcom/avg/tuneup/j;->n()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/avg/tuneup/j;->o()I

    move-result v5

    if-gt v0, v5, :cond_0

    const/4 v0, 0x2

    if-eq v4, v0, :cond_0

    move v0, v1

    :goto_0
    move v4, v0

    :goto_1
    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/s;->a(Landroid/content/Context;)Lcom/avg/tuneup/traffic/s;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/avg/tuneup/traffic/s;->a(Z)[D

    move-result-object v0

    if-eqz v0, :cond_6

    aget-wide v5, v0, v2

    const-wide/high16 v7, 0x4059

    cmpl-double v3, v5, v7

    if-ltz v3, :cond_1

    move v0, v1

    move v3, v1

    :goto_2
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v1, Lcom/antivirus/ui/tablet/c;->b:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v2, Lcom/antivirus/ui/tablet/c;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/antivirus/ui/tablet/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/tablet/c;->f:Landroid/content/Context;

    const v3, 0x7f090224

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v9}, Lcom/antivirus/ui/tablet/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_3
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/antivirus/c;->g()Z

    move-result v3

    if-eqz v3, :cond_6

    aget-wide v5, v0, v2

    invoke-static {}, Lcom/antivirus/c;->h()I

    move-result v0

    int-to-double v7, v0

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_6

    move v0, v2

    move v3, v1

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v1, Lcom/antivirus/ui/tablet/c;->b:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v2, Lcom/antivirus/ui/tablet/c;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/antivirus/ui/tablet/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/tablet/c;->f:Landroid/content/Context;

    const v3, 0x7f090222

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v9}, Lcom/antivirus/ui/tablet/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_5

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v1, Lcom/antivirus/ui/tablet/c;->b:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v3, Lcom/antivirus/ui/tablet/c;->b:I

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/antivirus/ui/tablet/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/antivirus/ui/tablet/c;->f:Landroid/content/Context;

    invoke-static {v3, v10}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2, v9}, Lcom/antivirus/ui/tablet/b;->a(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v2, Lcom/antivirus/ui/tablet/c;->b:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v3, Lcom/antivirus/ui/tablet/c;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/antivirus/ui/tablet/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/antivirus/ui/tablet/c;->f:Landroid/content/Context;

    invoke-static {v3, v10}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1, v9}, Lcom/antivirus/ui/tablet/b;->a(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v1, Lcom/antivirus/ui/tablet/c;->b:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v3, Lcom/antivirus/ui/tablet/c;->b:I

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/antivirus/ui/tablet/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v0, v1, v3, v2}, Lcom/antivirus/ui/tablet/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_6
    move v0, v2

    move v3, v2

    goto/16 :goto_2

    :cond_7
    move v4, v2

    goto/16 :goto_1
.end method

.method public a(Landroid/content/Intent;Lcom/antivirus/core/scanners/h;)V
    .locals 2

    const/4 v1, -0x1

    sget v0, Lcom/antivirus/ui/tablet/c;->c:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/c;->a()V

    :cond_0
    sget v0, Lcom/antivirus/ui/tablet/c;->a:I

    if-eq v0, v1, :cond_1

    invoke-static {p2}, Lcom/antivirus/ui/tablet/c;->a(Lcom/antivirus/core/scanners/h;)Lcom/antivirus/ui/tablet/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/tablet/c;->a(Lcom/antivirus/ui/tablet/e;)V

    :cond_1
    sget v0, Lcom/antivirus/ui/tablet/c;->b:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/tablet/c;->a(Landroid/content/Intent;)V

    :cond_2
    sget v0, Lcom/antivirus/ui/tablet/c;->d:I

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/c;->b()V

    :cond_3
    return-void
.end method

.method public a(Lcom/antivirus/ui/tablet/e;)V
    .locals 5

    const/4 v4, -0x1

    sget-object v0, Lcom/antivirus/ui/tablet/d;->a:[I

    invoke-virtual {p1}, Lcom/antivirus/ui/tablet/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v1, Lcom/antivirus/ui/tablet/c;->a:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v2, Lcom/antivirus/ui/tablet/c;->a:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/antivirus/ui/tablet/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/tablet/c;->f:Landroid/content/Context;

    const v3, 0x7f09021b

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/antivirus/ui/tablet/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v1, Lcom/antivirus/ui/tablet/c;->a:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v2, Lcom/antivirus/ui/tablet/c;->a:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/antivirus/ui/tablet/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/antivirus/ui/tablet/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v1, Lcom/antivirus/ui/tablet/c;->a:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v2, Lcom/antivirus/ui/tablet/c;->a:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/antivirus/ui/tablet/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/antivirus/ui/tablet/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v1, Lcom/antivirus/ui/tablet/c;->a:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v2, Lcom/antivirus/ui/tablet/c;->a:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/antivirus/ui/tablet/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/tablet/c;->f:Landroid/content/Context;

    const v3, 0x7f090042

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/antivirus/ui/tablet/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/antivirus/ui/tablet/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 4

    new-instance v0, Lcom/antivirus/applocker/c;

    invoke-direct {v0}, Lcom/antivirus/applocker/c;-><init>()V

    invoke-static {}, Lcom/antivirus/c;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/antivirus/ui/tablet/c;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/antivirus/applocker/c;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v0

    iget-object v0, v0, Lcom/avg/toolkit/e/a;->d:Lcom/avg/toolkit/e/c;

    sget-object v1, Lcom/avg/toolkit/e/c;->c:Lcom/avg/toolkit/e/c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v1, Lcom/antivirus/ui/tablet/c;->d:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v2, Lcom/antivirus/ui/tablet/c;->d:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/antivirus/ui/tablet/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/tablet/c;->f:Landroid/content/Context;

    const v3, 0x7f090226

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/antivirus/ui/tablet/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v1, Lcom/antivirus/ui/tablet/c;->d:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    sget v2, Lcom/antivirus/ui/tablet/c;->d:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/antivirus/ui/tablet/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/antivirus/ui/tablet/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public c(I)I
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/antivirus/ui/tablet/b;->c()I

    move-result v0

    return v0
.end method

.method public d(I)I
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/tablet/c;->g:[Lcom/antivirus/ui/tablet/b;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/antivirus/ui/tablet/b;->d()I

    move-result v0

    return v0
.end method
