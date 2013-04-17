.class final Lgh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lgg;


# direct methods
.method constructor <init>(Lgg;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lgh;->b:Lgg;

    iput-object p2, p0, Lgh;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lgh;->b:Lgg;

    iget-object v0, v0, Lgg;->a:Landroid/app/Activity;

    iget-object v1, p0, Lgh;->b:Lgg;

    iget-object v1, v1, Lgg;->b:Lkw;

    invoke-static {v0, v1}, Lfy;->a(Landroid/app/Activity;Lkw;)Z

    iget-object v0, p0, Lgh;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
