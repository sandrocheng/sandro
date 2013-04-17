.class final Ladv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ladu;


# direct methods
.method constructor <init>(Ladu;)V
    .locals 0

    iput-object p1, p0, Ladv;->a:Ladu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ladv;->a:Ladu;

    iget-object v0, v0, Ladu;->a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->d(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->X()V

    return-void
.end method
