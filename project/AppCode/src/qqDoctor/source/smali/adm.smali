.class public final Ladm;
.super Ladg;

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ladg;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Ladg;->a:I

    return-void
.end method

.method public static a()Ladm;
    .locals 1

    new-instance v0, Ladm;

    invoke-direct {v0}, Ladm;-><init>()V

    return-object v0
.end method
