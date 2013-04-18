.class final Lcom/keniu/security/traffic/g;
.super Ljava/lang/Object;
.source "Api.java"


# instance fields
.field private a:I

.field private b:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/traffic/g;->b:Ljava/util/HashMap;

    .line 918
    return-void
.end method
