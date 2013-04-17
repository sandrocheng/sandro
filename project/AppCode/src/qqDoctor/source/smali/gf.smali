.class public final Lgf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:[Ljava/lang/String;

.field private synthetic b:Lkw;

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

.field private synthetic d:Lge;


# direct methods
.method public constructor <init>(Lge;[Ljava/lang/String;Lkw;Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;)V
    .locals 0

    iput-object p1, p0, Lgf;->d:Lge;

    iput-object p2, p0, Lgf;->a:[Ljava/lang/String;

    iput-object p3, p0, Lgf;->b:Lkw;

    iput-object p4, p0, Lgf;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lgf;->a:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lgf;->d:Lge;

    iget-object v2, p0, Lgf;->b:Lkw;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lgm;

    invoke-direct {v4, v1, v2, v0}, Lgm;-><init>(Lge;Lkw;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lgf;->d:Lge;

    iget-object v0, v0, Lge;->b:Lge$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgf;->d:Lge;

    iget-object v0, v0, Lge;->b:Lge$a;

    iget-object v1, p0, Lgf;->b:Lkw;

    iget-object v0, v0, Lge$a;->a:Lbod;

    invoke-virtual {v0, v1}, Lbod;->b(Lkw;)V

    :cond_0
    iget-object v0, p0, Lgf;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->dismiss()V

    return-void
.end method
