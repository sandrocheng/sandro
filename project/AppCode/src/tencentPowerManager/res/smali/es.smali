.class public final Les;
.super Ljava/lang/SecurityException;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "The caller is not permitted"

    invoke-direct {p0, v0}, Les;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-void
.end method
