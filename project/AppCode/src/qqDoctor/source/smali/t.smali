.class public final Lt;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ly;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "motorola"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lac;

    invoke-direct {v0, p1}, Lac;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "samsung"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lad;

    invoke-direct {v0}, Lad;-><init>()V

    goto :goto_0

    :cond_2
    const-string v1, "zte"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "v889d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    new-instance v0, Lak;

    invoke-direct {v0}, Lak;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    goto :goto_0

    :cond_4
    const-string v1, "yulong"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lr;

    invoke-direct {v0}, Lr;-><init>()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lft;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mt6573"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "mt6575"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    new-instance v0, Lz;

    invoke-direct {v0}, Lz;-><init>()V

    goto :goto_0
.end method
