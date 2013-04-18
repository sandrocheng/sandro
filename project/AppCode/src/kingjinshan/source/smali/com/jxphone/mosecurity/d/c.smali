.class final Lcom/jxphone/mosecurity/d/c;
.super Ljava/lang/Object;
.source "AndroidLocationUtil.java"


# static fields
.field private static final a:Lcom/jxphone/mosecurity/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/jxphone/mosecurity/d/a;

    invoke-static {}, Lcom/jxphone/mosecurity/d/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jxphone/mosecurity/d/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jxphone/mosecurity/d/c;->a:Lcom/jxphone/mosecurity/d/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/jxphone/mosecurity/d/a;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/jxphone/mosecurity/d/c;->a:Lcom/jxphone/mosecurity/d/a;

    return-object v0
.end method
