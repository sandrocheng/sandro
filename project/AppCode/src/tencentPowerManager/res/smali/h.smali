.class final Lh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Le$a;

.field private synthetic b:Landroid/widget/CheckBox;

.field private synthetic c:Landroid/widget/SeekBar;

.field private synthetic d:Lde;


# direct methods
.method constructor <init>(Le$a;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Lde;)V
    .locals 0

    iput-object p1, p0, Lh;->a:Le$a;

    iput-object p2, p0, Lh;->b:Landroid/widget/CheckBox;

    iput-object p3, p0, Lh;->c:Landroid/widget/SeekBar;

    iput-object p4, p0, Lh;->d:Lde;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lh;->a:Le$a;

    iget-object v1, p0, Lh;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lh;->c:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    if-eqz v1, :cond_0

    iget-object v1, v0, Le$a;->b:Lck;

    iget-object v1, v1, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v1}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lbf;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Lbf;->c:I

    :goto_0
    iget-object v1, v0, Le$a;->a:Lbg;

    iget-object v2, v0, Le$a;->b:Lck;

    iget-object v2, v2, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v2}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->c(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lbg;->c:Ljava/lang/String;

    iget-object v0, v0, Le$a;->b:Lck;

    iget-object v0, v0, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->d(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lb;

    move-result-object v0

    invoke-virtual {v0}, Lb;->notifyDataSetChanged()V

    iget-object v0, p0, Lh;->d:Lde;

    invoke-virtual {v0}, Lde;->dismiss()V

    const/4 v0, 0x0

    sput-boolean v0, Le;->a:Z

    return-void

    :cond_0
    iget-object v1, v0, Le$a;->b:Lck;

    iget-object v1, v1, Lck;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v1}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lbf;

    move-result-object v1

    iput v2, v1, Lbf;->c:I

    goto :goto_0
.end method
