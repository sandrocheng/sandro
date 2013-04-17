.class public Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/WindowManager;

.field private c:Lhm;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/ImageView;

.field private h:I

.field private i:I

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/ImageView;

.field private p:F

.field private q:Landroid/graphics/Bitmap;

.field private r:Ljava/lang/String;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 10

    const v9, 0x7f0200cb

    const/4 v8, 0x3

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "CameraSwitchWindowView"

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->d:Ljava/lang/String;

    iput v7, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->h:I

    iput v7, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->i:I

    iput-boolean v6, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->u:Z

    iput v8, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->w:I

    iput v7, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    new-instance v0, Lbgk;

    invoke-direct {v0, p0}, Lbgk;-><init>(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->a:Landroid/content/Context;

    new-instance v0, Lhm;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lhm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->c:Lhm;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->b:Landroid/view/WindowManager;

    sget-object v0, Lkg;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030054

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->e:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->e:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->e:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800cc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->e:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800d0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->s:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->e:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800cd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->t:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->e:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->o:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->e:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800ce

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->n:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->c:Lhm;

    iget-object v0, v0, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v1, "Is_first_tips_box"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->c:Lhm;

    iget-object v0, v0, Lhm;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "Is_first_tips_box"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    sget-object v0, Lpx;->a:Landroid/widget/Toast;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lpx;->a:Landroid/widget/Toast;

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->c:Lhm;

    iget-object v0, v0, Lhm;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "need_save_file_status"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->c:Lhm;

    iget-object v0, v0, Lhm;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "need_save_file_status"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-object p3, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->r:Ljava/lang/String;

    if-eqz p3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraSwitchWindowView filePath "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lib;

    invoke-direct {v0}, Lib;-><init>()V

    const-string v1, "file_safe_file_info"

    const-string v2, "mFileSrcPath=?"

    new-array v3, v5, [Ljava/lang/String;

    aput-object p3, v3, v6

    const-string v4, "id ASC"

    invoke-virtual {v0, v1, v2, v3, v4}, Lib;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Llj;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Llj;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_tmb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v0}, Lgz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->q:Landroid/graphics/Bitmap;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->r:Ljava/lang/String;

    if-nez v0, :cond_8

    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->t:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->f:Landroid/widget/LinearLayout;

    const v1, 0x7f0200ca

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_5
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->k:F

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->j:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->m:F

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->l:F

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->v:I

    invoke-virtual {p0, v5}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->setClickable(Z)V

    invoke-virtual {p0, v5}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->setEnabled(Z)V

    invoke-virtual {p0, v5}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->setFocusable(Z)V

    invoke-virtual {p0, v5}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, p0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, p0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->c:Lhm;

    iget-object v0, v0, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v1, "camera_Box_Coordinate"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_9

    invoke-direct {p0, v5}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->a(Z)V

    :goto_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    return-void

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->r:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->s:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->t:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_9
    const v1, 0xffff

    and-int/2addr v1, v0

    int-to-float v1, v1

    iput v1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->j:F

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->k:F

    invoke-direct {p0, v6}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->a(Z)V

    goto :goto_2
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Lhm;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->c:Lhm;

    return-object v0
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;II)V
    .locals 9

    const-wide/16 v7, 0x1f4

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 4

    if-nez p1, :cond_3

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->k:F

    iget v1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->m:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->i:I

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->j:F

    iget v1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->l:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->h:I

    sget-object v0, Lkg;->b:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->h:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v0, Lkg;->b:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->i:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-object v0, Lkg;->b:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->a:Landroid/content/Context;

    invoke-static {v1}, Lft;->d(Landroid/content/Context;)I

    move-result v1

    if-lt v0, v1, :cond_0

    sget-object v0, Lkg;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->a:Landroid/content/Context;

    invoke-static {v1}, Lft;->d(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->getRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_0
    sget-object v0, Lkg;->b:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v0, :cond_1

    sget-object v0, Lkg;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_1
    sget-boolean v0, Lbgj;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->b:Landroid/view/WindowManager;

    sget-object v1, Lkg;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-object v0, Lkg;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->a:Landroid/content/Context;

    invoke-static {v1}, Lft;->d(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->getRight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v0, Lkg;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->a:Landroid/content/Context;

    invoke-static {v1}, Lft;->e(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-object v0, Lkg;->b:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->h:I

    sget-object v0, Lkg;->b:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->i:I

    goto :goto_0
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->c:Lhm;

    iget-object v0, v0, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v1, "need_save_file_status"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->c:Lhm;

    const/4 v1, 0x0

    iget-object v0, v0, Lhm;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "need_save_file_status"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->g:Landroid/widget/ImageView;

    const v1, 0x7f02012d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Lbgm;

    invoke-direct {v0, p0}, Lbgm;-><init>(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->c:Lhm;

    iget-object v0, v0, Lhm;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "need_save_file_status"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->g:Landroid/widget/ImageView;

    const v1, 0x7f02012e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Lbgn;

    invoke-direct {v0, p0}, Lbgn;-><init>(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static synthetic c(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->n:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic d(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic e(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->q:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static synthetic f(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic g(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->s:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic h(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->t:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic i(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->o:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public final a(FF)V
    .locals 7

    const/16 v6, -0x5a

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x4

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "window"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-ge v0, v5, :cond_2

    iput v2, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v6, v0, Landroid/os/Message;->arg1:I

    iput v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_0
    const/high16 v0, -0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    const/high16 v0, 0x4080

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_3

    const/high16 v0, 0x3f80

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_3

    const/4 v0, 0x3

    :goto_1
    iget v5, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->w:I

    packed-switch v5, :pswitch_data_0

    :cond_1
    :goto_2
    return-void

    :cond_2
    iput v3, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    goto :goto_0

    :cond_3
    const/high16 v0, -0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    const/high16 v0, 0x4080

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_4

    const/high16 v0, -0x4000

    cmpg-float v0, p2, v0

    if-gez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    const/high16 v0, -0x3f80

    cmpl-float v0, p2, v0

    if-lez v0, :cond_5

    const/high16 v0, 0x4080

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_5

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    const/high16 v0, -0x3f80

    cmpl-float v0, p2, v0

    if-lez v0, :cond_6

    const/high16 v0, 0x4080

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_6

    const/high16 v0, -0x4000

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    move v0, v3

    goto :goto_1

    :cond_6
    move v0, v4

    goto :goto_1

    :pswitch_0
    if-ne v0, v2, :cond_8

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->w:I

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x5a

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->arg1:I

    iput v6, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_8
    if-ne v0, v3, :cond_a

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->w:I

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v6, v0, Landroid/os/Message;->arg1:I

    iput v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :cond_9
    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, -0xb4

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput v6, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :cond_a
    if-ne v0, v1, :cond_1

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->w:I

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb4

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :cond_b
    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x5a

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput v6, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :pswitch_1
    if-ne v0, v3, :cond_d

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->w:I

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v3, :cond_c

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v6, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0x5a

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :cond_c
    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb4

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :cond_d
    const/4 v5, 0x3

    if-ne v0, v5, :cond_f

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->w:I

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v3, :cond_e

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0x5a

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :cond_e
    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v6, v0, Landroid/os/Message;->arg1:I

    iput v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :cond_f
    if-ne v0, v1, :cond_1

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->w:I

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v3, :cond_10

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb4

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0x5a

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :cond_10
    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x5a

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :pswitch_2
    if-ne v0, v2, :cond_12

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->w:I

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v3, :cond_11

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x5a

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput v6, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :cond_11
    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0xb4

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :cond_12
    const/4 v5, 0x3

    if-ne v0, v5, :cond_14

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->w:I

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v3, :cond_13

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->arg1:I

    iput v6, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :cond_13
    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v6, v0, Landroid/os/Message;->arg1:I

    const/16 v1, -0xb4

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :cond_14
    if-ne v0, v1, :cond_1

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->w:I

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v3, :cond_15

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, -0xb4

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput v6, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :cond_15
    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x5a

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0xb4

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :pswitch_3
    if-ne v0, v2, :cond_17

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->w:I

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v3, :cond_16

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x5a

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0xb4

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :cond_16
    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0x5a

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :cond_17
    if-ne v0, v3, :cond_19

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->w:I

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v3, :cond_18

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v6, v0, Landroid/os/Message;->arg1:I

    const/16 v1, -0xb4

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :cond_18
    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb4

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0x5a

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :cond_19
    const/4 v5, 0x3

    if-ne v0, v5, :cond_1

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->w:I

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v3, :cond_1a

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0xb4

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :cond_1a
    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->x:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v6, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0x5a

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x3

    invoke-static {p1}, Lfi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->q:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->r:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2
    invoke-static {p1}, La;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_tmb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lgz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->p:F

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->p:F

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->p:F

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->a:Landroid/content/Context;

    invoke-static {v0}, Lpx;->a(Landroid/content/Context;)Lpx;

    move-result-object v0

    invoke-virtual {v0}, Lpx;->d()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->a:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/filesafe/GalleryActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x3c00

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "position"

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "from_where"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "src_path_list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->b()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const v5, 0xffff

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->j:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->k:F

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->k:F

    int-to-float v3, v3

    sub-float v3, v4, v3

    iput v3, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->k:F

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->u:Z

    goto :goto_0

    :pswitch_0
    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->u:Z

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->setFocusable(Z)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->l:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->m:F

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->l:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->m:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->v:I

    if-gt v2, v4, :cond_2

    iget v2, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->v:I

    if-gt v3, v2, :cond_2

    iget-boolean v2, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->u:Z

    if-eqz v2, :cond_1

    :cond_2
    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->u:Z

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->a(Z)V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->c:Lhm;

    iget-object v2, v2, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v3, "Is_first_tips_move"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->c:Lhm;

    iget-object v1, v1, Lhm;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "Is_first_tips_move"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Lbgl;

    invoke-direct {v0, p0}, Lbgl;-><init>(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->y:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->p:F

    iget v2, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->h:I

    iget v1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->i:I

    if-gez v2, :cond_3

    move v2, v0

    :cond_3
    if-gez v1, :cond_4

    :goto_2
    and-int v1, v2, v5

    and-int/2addr v0, v5

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->c:Lhm;

    iget-object v1, v1, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v2, "camera_Box_Coordinate"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->c:Lhm;

    iget-object v1, v1, Lhm;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "camera_Box_Coordinate"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->m:F

    iput v0, p0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->l:F

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
