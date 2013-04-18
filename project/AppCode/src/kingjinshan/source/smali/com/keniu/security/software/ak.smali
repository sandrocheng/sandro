.class final Lcom/keniu/security/software/ak;
.super Ljava/lang/Object;
.source "SoftwareManager2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/keniu/security/software/aj;


# direct methods
.method constructor <init>(Lcom/keniu/security/software/aj;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/keniu/security/software/ak;->b:Lcom/keniu/security/software/aj;

    iput-object p2, p0, Lcom/keniu/security/software/ak;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 1070
    iget-object v0, p0, Lcom/keniu/security/software/ak;->b:Lcom/keniu/security/software/aj;

    iget-object v0, v0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->C(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/keniu/security/software/ak;->b:Lcom/keniu/security/software/aj;

    iget-object v0, v0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->C(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1073
    iget-object v0, p0, Lcom/keniu/security/software/ak;->b:Lcom/keniu/security/software/aj;

    iget-object v0, v0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0, v2}, Lcom/keniu/security/software/SoftwareManager2;->a(Lcom/keniu/security/software/SoftwareManager2;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 1189
    :goto_0
    return-void

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/software/ak;->b:Lcom/keniu/security/software/aj;

    iget-object v0, v0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->B(Lcom/keniu/security/software/SoftwareManager2;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300fb

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1080
    const v0, 0x7f08037c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1082
    const v1, 0x7f08037e

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1084
    const v2, 0x7f08037f

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1086
    const v3, 0x7f080381

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1089
    new-instance v5, Lcom/keniu/security/software/al;

    invoke-direct {v5, p0}, Lcom/keniu/security/software/al;-><init>(Lcom/keniu/security/software/ak;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1109
    new-instance v5, Lcom/keniu/security/software/am;

    invoke-direct {v5, p0}, Lcom/keniu/security/software/am;-><init>(Lcom/keniu/security/software/ak;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1129
    new-instance v1, Lcom/keniu/security/software/an;

    invoke-direct {v1, p0}, Lcom/keniu/security/software/an;-><init>(Lcom/keniu/security/software/ak;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1149
    new-instance v1, Lcom/keniu/security/software/ao;

    invoke-direct {v1, p0}, Lcom/keniu/security/software/ao;-><init>(Lcom/keniu/security/software/ak;)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1169
    iget-object v1, p0, Lcom/keniu/security/software/ak;->a:Ljava/lang/String;

    const-string v2, "appCate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1171
    const v1, 0x7f08037d

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1174
    const v1, 0x7f080380

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1178
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1179
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1183
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/software/ak;->b:Lcom/keniu/security/software/aj;

    iget-object v0, v0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v4, v7, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-static {v0, v1}, Lcom/keniu/security/software/SoftwareManager2;->a(Lcom/keniu/security/software/SoftwareManager2;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 1186
    iget-object v0, p0, Lcom/keniu/security/software/ak;->b:Lcom/keniu/security/software/aj;

    iget-object v0, v0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->C(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1187
    iget-object v0, p0, Lcom/keniu/security/software/ak;->b:Lcom/keniu/security/software/aj;

    iget-object v0, v0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->C(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v6, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_0
.end method
