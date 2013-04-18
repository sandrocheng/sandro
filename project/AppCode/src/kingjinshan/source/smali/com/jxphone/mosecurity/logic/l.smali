.class final Lcom/jxphone/mosecurity/logic/l;
.super Ljava/lang/Object;
.source "PhoneCallLogicImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/logic/i;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/logic/i;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/jxphone/mosecurity/logic/l;->a:Lcom/jxphone/mosecurity/logic/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/l;->a:Lcom/jxphone/mosecurity/logic/i;

    invoke-static {v0}, Lcom/jxphone/mosecurity/logic/i;->j(Lcom/jxphone/mosecurity/logic/i;)V

    .line 588
    return-void
.end method
