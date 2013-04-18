.class final Lcom/keniu/security/f/j;
.super Ljava/lang/Object;
.source "IniResolver.java"


# instance fields
.field public a:Ljava/util/Collection;

.field public b:Ljava/util/Map;


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/keniu/security/f/j;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1
    .parameter

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/f/j;->a:Ljava/util/Collection;

    .line 312
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/f/j;->b:Ljava/util/Map;

    return-void
.end method
