.class public final Let;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lfb;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;


# direct methods
.method public constructor <init>(Lfb;Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;)V
    .locals 0

    iput-object p1, p0, Let;->a:Lfb;

    iput-object p2, p0, Let;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Let;->a:Lfb;

    iget-object v1, v0, Lfb;->b:Lbnd;

    iget-object v2, v0, Lfb;->b:Lbnd;

    invoke-static {v2}, Lbnd;->n(Lbnd;)Lkv;

    move-result-object v2

    iget-object v2, v2, Lkv;->d:Lkw;

    iget-object v0, v0, Lfb;->a:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v2, v0}, Lbnd;->a(Lbnd;Lkw;I)V

    iget-object v0, p0, Let;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->dismiss()V

    return-void
.end method
