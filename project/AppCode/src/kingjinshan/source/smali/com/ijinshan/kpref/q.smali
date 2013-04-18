.class final Lcom/ijinshan/kpref/q;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ijinshan/kpref/p;


# direct methods
.method constructor <init>(Lcom/ijinshan/kpref/p;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/ijinshan/kpref/q;->a:Lcom/ijinshan/kpref/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ijinshan/kpref/q;->a:Lcom/ijinshan/kpref/p;

    invoke-static {v0}, Lcom/ijinshan/kpref/p;->a(Lcom/ijinshan/kpref/p;)V

    .line 89
    return-void
.end method
