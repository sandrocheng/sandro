.class final Lcom/ijinshan/kpref/f;
.super Ljava/lang/Object;
.source "GenericInflater.java"

# interfaces
.implements Lcom/ijinshan/kpref/e;


# instance fields
.field private final a:Lcom/ijinshan/kpref/e;

.field private final b:Lcom/ijinshan/kpref/e;


# direct methods
.method constructor <init>(Lcom/ijinshan/kpref/e;Lcom/ijinshan/kpref/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/ijinshan/kpref/f;->a:Lcom/ijinshan/kpref/e;

    .line 89
    iput-object p2, p0, Lcom/ijinshan/kpref/f;->b:Lcom/ijinshan/kpref/e;

    .line 90
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ijinshan/kpref/f;->a:Lcom/ijinshan/kpref/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/ijinshan/kpref/e;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/f;->b:Lcom/ijinshan/kpref/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/ijinshan/kpref/e;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
