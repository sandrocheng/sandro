.class public Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;
.super Landroid/app/AlertDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter;
    }
.end annotation


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private mCallback:Ldv;

.field private mContext:Landroid/content/Context;

.field private msgID:I

.field private width:I

.field private xPos:I

.field private yPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILjava/util/List;Ldv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ldv;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->dataList:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->mCallback:Ldv;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->listView:Landroid/widget/ListView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->msgID:I

    iput-object p5, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->dataList:Ljava/util/List;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->xPos:I

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->yPos:I

    iput p4, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->width:I

    iput-object p6, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->mCallback:Ldv;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;)Ldv;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->mCallback:Ldv;

    return-object v0
.end method

.method private isOutOfBounds(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gt v0, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    if-le v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const v4, 0x7f09004b

    const/4 v6, 0x0

    const/4 v2, -0x2

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->dataList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;Ljava/util/List;)V

    new-instance v1, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelector(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$1;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->width:I

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->xPos:I

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->yPos:I

    const/4 v5, 0x2

    const/4 v7, -0x1

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->isOutOfBounds(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->cancel()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
