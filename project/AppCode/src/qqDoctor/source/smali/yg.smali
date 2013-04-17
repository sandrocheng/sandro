.class final Lyg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow$OnCancelLisnetner;


# instance fields
.field private synthetic a:Lyf;


# direct methods
.method constructor <init>(Lyf;)V
    .locals 0

    iput-object p1, p0, Lyg;->a:Lyf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 2

    iget-object v0, p0, Lyg;->a:Lyf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lyf;->a(Lyf;Z)Z

    return-void
.end method
