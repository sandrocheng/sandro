.class public final Lgp;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lev;)V
    .locals 0

    invoke-direct {p0}, Lgp;-><init>()V

    return-void
.end method

.method public static a(ZZ)V
    .locals 2

    invoke-static {}, Lev;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lev;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    invoke-static {p0}, Lev;->a(Z)V

    :goto_0
    invoke-static {p1}, Lev;->b(Z)V

    invoke-static {}, Lev;->j()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lev;->a(Z)V

    goto :goto_0
.end method
