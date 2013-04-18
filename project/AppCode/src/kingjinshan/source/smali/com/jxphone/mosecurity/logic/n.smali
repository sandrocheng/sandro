.class final Lcom/jxphone/mosecurity/logic/n;
.super Ljava/lang/Object;
.source "PhoneCallLogicImpl.java"


# instance fields
.field private a:Lcom/jxphone/mosecurity/c/j;

.field private b:J

.field private c:Lcom/jxphone/mosecurity/c/b;


# direct methods
.method synthetic constructor <init>(Lcom/jxphone/mosecurity/c/j;Lcom/jxphone/mosecurity/c/b;J)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 800
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/jxphone/mosecurity/logic/n;-><init>(Lcom/jxphone/mosecurity/c/j;Lcom/jxphone/mosecurity/c/b;JB)V

    return-void
.end method

.method private constructor <init>(Lcom/jxphone/mosecurity/c/j;Lcom/jxphone/mosecurity/c/b;JB)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 811
    iput-object p1, p0, Lcom/jxphone/mosecurity/logic/n;->a:Lcom/jxphone/mosecurity/c/j;

    .line 812
    iput-object p2, p0, Lcom/jxphone/mosecurity/logic/n;->c:Lcom/jxphone/mosecurity/c/b;

    .line 813
    iput-wide p3, p0, Lcom/jxphone/mosecurity/logic/n;->b:J

    .line 814
    return-void
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/logic/n;)Lcom/jxphone/mosecurity/c/j;
    .locals 1
    .parameter

    .prologue
    .line 800
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/n;->a:Lcom/jxphone/mosecurity/c/j;

    return-object v0
.end method

.method static synthetic b(Lcom/jxphone/mosecurity/logic/n;)Lcom/jxphone/mosecurity/c/b;
    .locals 1
    .parameter

    .prologue
    .line 800
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/n;->c:Lcom/jxphone/mosecurity/c/b;

    return-object v0
.end method

.method static synthetic c(Lcom/jxphone/mosecurity/logic/n;)J
    .locals 2
    .parameter

    .prologue
    .line 800
    iget-wide v0, p0, Lcom/jxphone/mosecurity/logic/n;->b:J

    return-wide v0
.end method
