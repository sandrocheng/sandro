.class public final Lgk;
.super Ljava/lang/Object;


# static fields
.field private static a:Lgj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgj;

    invoke-direct {v0}, Lgj;-><init>()V

    sput-object v0, Lgk;->a:Lgj;

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/lang/Exception;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lgk;->a:Lgj;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lgk;->a:Lgj;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method
