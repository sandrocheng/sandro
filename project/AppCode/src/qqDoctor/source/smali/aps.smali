.class final Laps;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lapf;


# direct methods
.method constructor <init>(Lapf;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Laps;->b:Lapf;

    iput-object p2, p0, Laps;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Laps;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Laps;->b:Lapf;

    iget-object v1, p0, Laps;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-static {v0, v1}, Lapf;->a(Lapf;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-void
.end method