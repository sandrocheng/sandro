.class public final Lany;
.super Ljava/lang/Object;

# interfaces
.implements Ldv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldv",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/view/MainPageView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/view/MainPageView;)V
    .locals 0

    iput-object p1, p0, Lany;->a:Lcom/tencent/qqpimsecure/view/MainPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lany;->a:Lcom/tencent/qqpimsecure/view/MainPageView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/MainPageView;->h(Lcom/tencent/qqpimsecure/view/MainPageView;)Lwq;

    move-result-object v0

    invoke-virtual {v0}, Lwq;->d()V

    iget-object v0, p0, Lany;->a:Lcom/tencent/qqpimsecure/view/MainPageView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/MainPageView;->b(Lcom/tencent/qqpimsecure/view/MainPageView;)Lho;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lho;->t(Z)V

    return-void
.end method
