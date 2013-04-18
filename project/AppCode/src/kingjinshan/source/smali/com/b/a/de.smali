.class public final Lcom/b/a/de;
.super Ljava/lang/Object;
.source "ExtensionRegistry.java"


# instance fields
.field public final a:Lcom/b/a/cq;

.field public final b:Lcom/b/a/ev;


# direct methods
.method private constructor <init>(Lcom/b/a/cq;)V
    .locals 1
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/b/a/de;->a:Lcom/b/a/cq;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/de;->b:Lcom/b/a/ev;

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/cq;Lcom/b/a/ev;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/b/a/de;-><init>(Lcom/b/a/cq;Lcom/b/a/ev;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/cq;Lcom/b/a/ev;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/b/a/de;->a:Lcom/b/a/cq;

    .line 128
    iput-object p2, p0, Lcom/b/a/de;->b:Lcom/b/a/ev;

    .line 129
    return-void
.end method
