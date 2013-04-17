.class final Lase;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Ljava/util/ArrayList;

.field private synthetic c:Larz;


# direct methods
.method constructor <init>(Larz;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lase;->c:Larz;

    iput-object p2, p0, Lase;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iput-object p3, p0, Lase;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lase;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lase;->c:Larz;

    iget-object v1, p0, Lase;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Larz;->b(Ljava/util/ArrayList;)V

    return-void
.end method
