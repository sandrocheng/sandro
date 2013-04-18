.class final Lcom/keniu/security/commumgr/c;
.super Ljava/lang/Object;
.source "CallLocateLayoutActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/commumgr/CallLocateLayoutActivity;

.field private b:I

.field private c:I

.field private d:J


# direct methods
.method public constructor <init>(Lcom/keniu/security/commumgr/CallLocateLayoutActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/keniu/security/commumgr/c;->a:Lcom/keniu/security/commumgr/CallLocateLayoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/commumgr/c;->d:J

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/commumgr/c;->c:I

    iput v0, p0, Lcom/keniu/security/commumgr/c;->b:I

    .line 140
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 167
    iget-object v0, p0, Lcom/keniu/security/commumgr/c;->a:Lcom/keniu/security/commumgr/CallLocateLayoutActivity;

    invoke-static {v0}, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->b(Lcom/keniu/security/commumgr/CallLocateLayoutActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/keniu/security/commumgr/c;->a:Lcom/keniu/security/commumgr/CallLocateLayoutActivity;

    invoke-static {v1}, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->c(Lcom/keniu/security/commumgr/CallLocateLayoutActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 168
    iget-object v1, p0, Lcom/keniu/security/commumgr/c;->a:Lcom/keniu/security/commumgr/CallLocateLayoutActivity;

    invoke-static {v1}, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->b(Lcom/keniu/security/commumgr/CallLocateLayoutActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/commumgr/c;->a:Lcom/keniu/security/commumgr/CallLocateLayoutActivity;

    invoke-static {v2}, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->c(Lcom/keniu/security/commumgr/CallLocateLayoutActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 169
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 212
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 171
    :pswitch_0
    iget-wide v1, p0, Lcom/keniu/security/commumgr/c;->d:J

    const-wide/16 v3, 0x1f4

    add-long/2addr v1, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/keniu/security/commumgr/c;->a:Lcom/keniu/security/commumgr/CallLocateLayoutActivity;

    invoke-static {v1}, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->b(Lcom/keniu/security/commumgr/CallLocateLayoutActivity;)Landroid/view/View;

    move-result-object v1

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/keniu/security/commumgr/c;->a:Lcom/keniu/security/commumgr/CallLocateLayoutActivity;

    invoke-static {v2}, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->b(Lcom/keniu/security/commumgr/CallLocateLayoutActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1, v0, v2, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 180
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keniu/security/commumgr/c;->d:J

    goto :goto_0

    .line 183
    :pswitch_1
    iput v5, p0, Lcom/keniu/security/commumgr/c;->b:I

    .line 184
    iput v5, p0, Lcom/keniu/security/commumgr/c;->c:I

    goto :goto_0

    .line 187
    :pswitch_2
    iget v2, p0, Lcom/keniu/security/commumgr/c;->b:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/keniu/security/commumgr/c;->c:I

    if-nez v2, :cond_1

    .line 188
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/keniu/security/commumgr/c;->b:I

    .line 189
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/keniu/security/commumgr/c;->c:I

    goto :goto_0

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/keniu/security/commumgr/c;->a:Lcom/keniu/security/commumgr/CallLocateLayoutActivity;

    invoke-static {v2}, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->b(Lcom/keniu/security/commumgr/CallLocateLayoutActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/keniu/security/commumgr/c;->b:I

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 193
    iget-object v3, p0, Lcom/keniu/security/commumgr/c;->a:Lcom/keniu/security/commumgr/CallLocateLayoutActivity;

    invoke-static {v3}, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->b(Lcom/keniu/security/commumgr/CallLocateLayoutActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/keniu/security/commumgr/c;->c:I

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 194
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/keniu/security/commumgr/c;->b:I

    .line 195
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/keniu/security/commumgr/c;->c:I

    .line 197
    if-gez v2, :cond_4

    move v0, v5

    .line 202
    :cond_2
    :goto_1
    if-gez v3, :cond_5

    move v1, v5

    .line 208
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/keniu/security/commumgr/c;->a:Lcom/keniu/security/commumgr/CallLocateLayoutActivity;

    invoke-static {v2}, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->b(Lcom/keniu/security/commumgr/CallLocateLayoutActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 199
    :cond_4
    if-gt v2, v0, :cond_2

    move v0, v2

    goto :goto_1

    .line 204
    :cond_5
    if-gt v3, v1, :cond_3

    move v1, v3

    goto :goto_2

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
