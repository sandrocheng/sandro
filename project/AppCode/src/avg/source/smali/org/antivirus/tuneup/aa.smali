.class final Lorg/antivirus/tuneup/aa;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/BatteryStateActivity;

.field private b:Landroid/view/LayoutInflater;

.field private c:[I


# direct methods
.method public constructor <init>(Lorg/antivirus/tuneup/BatteryStateActivity;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lorg/antivirus/tuneup/aa;->a:Lorg/antivirus/tuneup/BatteryStateActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/tuneup/aa;->b:Landroid/view/LayoutInflater;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/antivirus/tuneup/aa;->c:[I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/antivirus/tuneup/aa;->c:[I

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/aa;->c:[I

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/aa;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lorg/antivirus/tuneup/ab;

    invoke-direct {v1, p0}, Lorg/antivirus/tuneup/ab;-><init>(Lorg/antivirus/tuneup/aa;)V

    const v0, 0x7f08006b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lorg/antivirus/tuneup/ab;->a:Landroid/widget/ImageView;

    const v0, 0x7f08006c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/antivirus/tuneup/ab;->b:Landroid/widget/TextView;

    const v0, 0x7f080070

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/antivirus/tuneup/ab;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lorg/antivirus/tuneup/aa;->c:[I

    aget v1, v1, p1

    packed-switch v1, :pswitch_data_0

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/tuneup/ab;

    goto :goto_0

    :pswitch_0
    iget-object v1, v0, Lorg/antivirus/tuneup/ab;->b:Landroid/widget/TextView;

    const v2, 0x7f0900d7

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/antivirus/tuneup/ab;->a:Landroid/widget/ImageView;

    const v2, 0x7f02005c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v0, Lorg/antivirus/tuneup/ab;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/antivirus/tuneup/aa;->a:Lorg/antivirus/tuneup/BatteryStateActivity;

    invoke-static {v1}, Lorg/antivirus/tuneup/BatteryStateActivity;->b(Lorg/antivirus/tuneup/BatteryStateActivity;)Lorg/antivirus/tuneup/u;

    move-result-object v1

    iget-object v1, v1, Lorg/antivirus/tuneup/u;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_1
    iget-object v1, v0, Lorg/antivirus/tuneup/ab;->b:Landroid/widget/TextView;

    const v2, 0x7f0900d8

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/antivirus/tuneup/ab;->a:Landroid/widget/ImageView;

    const v2, 0x7f02005b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v0, Lorg/antivirus/tuneup/ab;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/antivirus/tuneup/aa;->a:Lorg/antivirus/tuneup/BatteryStateActivity;

    invoke-static {v1}, Lorg/antivirus/tuneup/BatteryStateActivity;->b(Lorg/antivirus/tuneup/BatteryStateActivity;)Lorg/antivirus/tuneup/u;

    move-result-object v1

    iget-object v1, v1, Lorg/antivirus/tuneup/u;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_2
    iget-object v1, v0, Lorg/antivirus/tuneup/ab;->b:Landroid/widget/TextView;

    const v2, 0x7f0900d9

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/antivirus/tuneup/ab;->a:Landroid/widget/ImageView;

    const v2, 0x7f02005d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v0, Lorg/antivirus/tuneup/ab;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/antivirus/tuneup/aa;->a:Lorg/antivirus/tuneup/BatteryStateActivity;

    invoke-static {v1}, Lorg/antivirus/tuneup/BatteryStateActivity;->b(Lorg/antivirus/tuneup/BatteryStateActivity;)Lorg/antivirus/tuneup/u;

    move-result-object v1

    iget-object v1, v1, Lorg/antivirus/tuneup/u;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_3
    iget-object v1, v0, Lorg/antivirus/tuneup/ab;->b:Landroid/widget/TextView;

    const v2, 0x7f0900db

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/antivirus/tuneup/ab;->a:Landroid/widget/ImageView;

    const v2, 0x7f020060

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v0, Lorg/antivirus/tuneup/ab;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/antivirus/tuneup/aa;->a:Lorg/antivirus/tuneup/BatteryStateActivity;

    invoke-static {v1}, Lorg/antivirus/tuneup/BatteryStateActivity;->b(Lorg/antivirus/tuneup/BatteryStateActivity;)Lorg/antivirus/tuneup/u;

    move-result-object v1

    iget-object v1, v1, Lorg/antivirus/tuneup/u;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v1, v0, Lorg/antivirus/tuneup/ab;->b:Landroid/widget/TextView;

    const v2, 0x7f0900da

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/antivirus/tuneup/ab;->a:Landroid/widget/ImageView;

    const v2, 0x7f02005f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v0, Lorg/antivirus/tuneup/ab;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/antivirus/tuneup/aa;->a:Lorg/antivirus/tuneup/BatteryStateActivity;

    invoke-static {v1}, Lorg/antivirus/tuneup/BatteryStateActivity;->b(Lorg/antivirus/tuneup/BatteryStateActivity;)Lorg/antivirus/tuneup/u;

    move-result-object v1

    iget-object v1, v1, Lorg/antivirus/tuneup/u;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, v0, Lorg/antivirus/tuneup/ab;->b:Landroid/widget/TextView;

    const v2, 0x7f0900dc

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/antivirus/tuneup/ab;->a:Landroid/widget/ImageView;

    const v2, 0x7f02005e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v0, Lorg/antivirus/tuneup/ab;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/antivirus/tuneup/aa;->a:Lorg/antivirus/tuneup/BatteryStateActivity;

    invoke-static {v1}, Lorg/antivirus/tuneup/BatteryStateActivity;->b(Lorg/antivirus/tuneup/BatteryStateActivity;)Lorg/antivirus/tuneup/u;

    move-result-object v1

    iget-object v1, v1, Lorg/antivirus/tuneup/u;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final isEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
