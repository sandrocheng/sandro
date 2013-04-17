.class final Lrt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lrn$a;


# direct methods
.method constructor <init>(Lrn$a;)V
    .locals 0

    iput-object p1, p0, Lrt;->a:Lrn$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lrt;->a:Lrn$a;

    iget-object v0, v0, Lrn$a;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->unShow()V

    return-void
.end method
