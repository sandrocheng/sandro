.class public Lorg/antivirus/core/compatibility/AndroidVersionCompatibility;
.super Ljava/lang/Object;


# static fields
.field public static final VER_DONUT:I = 0x4

.field public static final VER_ECLAIR:I = 0x5

.field public static final VER_FROYO:I = 0x8

.field public static final VER_GINGERBREAD:I = 0x9

.field public static final VER_HONEYCOMB:I = 0xb

.field public static final VER_ICS:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEclairOrAbove()Z
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
