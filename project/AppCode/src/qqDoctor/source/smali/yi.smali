.class final Lyi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lyf;


# direct methods
.method constructor <init>(Lyf;)V
    .locals 0

    iput-object p1, p0, Lyi;->a:Lyf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lyi;->a:Lyf;

    invoke-static {v0}, Lyf;->f(Lyf;)Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->unShow()V

    return-void
.end method
