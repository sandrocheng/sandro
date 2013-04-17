.class public final Lanw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/view/MainPageView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/view/MainPageView;)V
    .locals 0

    iput-object p1, p0, Lanw;->a:Lcom/tencent/qqpimsecure/view/MainPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    iget-object v0, p0, Lanw;->a:Lcom/tencent/qqpimsecure/view/MainPageView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/MainPageView;->b(Lcom/tencent/qqpimsecure/view/MainPageView;)Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->bw()V

    return-void
.end method
