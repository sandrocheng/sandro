.class final Lcom/keniu/security/c;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# static fields
.field private static final a:Lcom/keniu/security/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/keniu/security/a;

    invoke-static {}, Lcom/keniu/security/a;->aT()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/keniu/security/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/keniu/security/c;->a:Lcom/keniu/security/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/keniu/security/a;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/keniu/security/c;->a:Lcom/keniu/security/a;

    return-object v0
.end method
