.class final Lorg/antivirus/tuneup/q;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/tuneup/q;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lorg/antivirus/tuneup/q;Lorg/antivirus/tuneup/t;IZ)V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->a(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)[I

    move-result-object v0

    aget v0, v0, p2

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->h(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Z

    move-result v0

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0, p3}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->a(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;Z)V

    invoke-virtual {p0}, Lorg/antivirus/tuneup/q;->notifyDataSetChanged()V

    iget-object v1, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    const-string v2, "power_saving_options"

    const-string v3, "wifi"

    if-eqz p3, :cond_1

    const-string v0, "on"

    :goto_1
    invoke-static {v1, v2, v3, v0}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "off"

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->k(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Z

    move-result v0

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0, p3}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->b(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;Z)I

    invoke-virtual {p0}, Lorg/antivirus/tuneup/q;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->e()Z

    move-result v0

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {p3}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->a(Z)V

    iget-object v1, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    const-string v2, "power_saving_options"

    const-string v3, "bluetooth"

    if-eqz p3, :cond_2

    const-string v0, "on"

    :goto_2
    invoke-static {v1, v2, v3, v0}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "off"

    goto :goto_2

    :pswitch_4
    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->m(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Z

    move-result v0

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->u(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V

    iget-object v1, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    const-string v2, "power_saving_options"

    const-string v3, "gps"

    if-eqz p3, :cond_3

    const-string v0, "on"

    :goto_3
    invoke-static {v1, v2, v3, v0}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "off"

    goto :goto_3

    :pswitch_5
    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->h()Z

    move-result v0

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {p3}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->b(Z)V

    invoke-virtual {p0}, Lorg/antivirus/tuneup/q;->notifyDataSetChanged()V

    iget-object v1, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    const-string v2, "power_saving_options"

    const-string v3, "auto_sync"

    if-eqz p3, :cond_4

    const-string v0, "on"

    :goto_4
    invoke-static {v1, v2, v3, v0}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "off"

    goto :goto_4

    :pswitch_6
    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->o(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Z

    move-result v0

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0, p3}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->c(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;Z)V

    iget-object v1, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    const-string v2, "power_saving_options"

    const-string v3, "airplane"

    if-eqz p3, :cond_5

    const-string v0, "on"

    :goto_5
    invoke-static {v1, v2, v3, v0}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "off"

    goto :goto_5

    :pswitch_7
    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->p(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Z

    move-result v0

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0, p3, p1}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->a(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;ZLorg/antivirus/tuneup/t;)V

    iget-object v1, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    const-string v2, "power_saving_options"

    const-string v3, "auto_brightness"

    if-eqz p3, :cond_6

    const-string v0, "on"

    :goto_6
    invoke-static {v1, v2, v3, v0}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "off"

    goto :goto_6

    :pswitch_8
    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->t(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Z

    move-result v0

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0, p3}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->d(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;Z)V

    invoke-virtual {p0}, Lorg/antivirus/tuneup/q;->notifyDataSetChanged()V

    iget-object v1, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    const-string v2, "power_saving_options"

    const-string v3, "auto_rotation"

    if-eqz p3, :cond_7

    const-string v0, "on"

    :goto_7
    invoke-static {v1, v2, v3, v0}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "off"

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->a(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->a(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)[I

    move-result-object v0

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .locals 8

    const v7, 0x7f0900fc

    const v6, 0x7f0900fb

    const v5, 0x7f090107

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/q;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lorg/antivirus/tuneup/t;

    invoke-direct {v1, p0}, Lorg/antivirus/tuneup/t;-><init>(Lorg/antivirus/tuneup/q;)V

    const v0, 0x7f08006b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lorg/antivirus/tuneup/t;->a:Landroid/widget/ImageView;

    const v0, 0x7f08006c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/antivirus/tuneup/t;->b:Landroid/widget/TextView;

    const v0, 0x7f08006d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/antivirus/tuneup/t;->c:Landroid/widget/TextView;

    const v0, 0x7f08006f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    const v0, 0x7f08006e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, v1, Lorg/antivirus/tuneup/t;->e:Landroid/widget/SeekBar;

    const v0, 0x7f080069

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lorg/antivirus/tuneup/t;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f080070

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    new-instance v2, Lorg/antivirus/tuneup/r;

    invoke-direct {v2, p0, v1, p1}, Lorg/antivirus/tuneup/r;-><init>(Lorg/antivirus/tuneup/q;Lorg/antivirus/tuneup/t;I)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->e:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->a(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)[I

    move-result-object v0

    aget v0, v0, p1

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/tuneup/t;

    move-object v1, v0

    goto :goto_0

    :pswitch_0
    iget-object v0, v1, Lorg/antivirus/tuneup/t;->a:Landroid/widget/ImageView;

    const v2, 0x7f0200f2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->b:Landroid/widget/TextView;

    const v2, 0x7f090102

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lorg/antivirus/tuneup/t;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0002

    invoke-static {v0}, Lorg/antivirus/Strings;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->d()I

    move-result v2

    aget-object v0, v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, v1, Lorg/antivirus/tuneup/t;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->f:Landroid/widget/LinearLayout;

    const v2, 0x7f08006a

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f090101

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->b:Landroid/widget/TextView;

    const v2, 0x7f0900ed

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->a:Landroid/widget/ImageView;

    const v2, 0x7f020136

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    iget-object v2, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v2}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->h(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v2}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->i(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->j(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_1

    :pswitch_3
    iget-object v0, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, v1, Lorg/antivirus/tuneup/t;->b:Landroid/widget/TextView;

    const v2, 0x7f0900f0

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->a:Landroid/widget/ImageView;

    const v2, 0x7f020137

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x7

    if-gt v0, v2, :cond_1

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, v1, Lorg/antivirus/tuneup/t;->c:Landroid/widget/TextView;

    const v0, 0x7f09011d

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->k(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Z

    move-result v0

    iget-object v2, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v2}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->l(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)I

    move-result v2

    iget-object v3, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    packed-switch v2, :pswitch_data_2

    :goto_3
    :pswitch_5
    iget-object v1, v1, Lorg/antivirus/tuneup/t;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v2}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->b(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_6
    iget-object v0, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_3

    :pswitch_7
    iget-object v0, v1, Lorg/antivirus/tuneup/t;->b:Landroid/widget/TextView;

    const v2, 0x7f0900ee

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    iget-object v2, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->e()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->a:Landroid/widget/ImageView;

    const v2, 0x7f020062

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    :pswitch_8
    goto/16 :goto_1

    :pswitch_9
    iget-object v0, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_1

    :pswitch_a
    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->m(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Z

    move-result v0

    iget-object v2, v1, Lorg/antivirus/tuneup/t;->a:Landroid/widget/ImageView;

    const v3, 0x7f0200ea

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v1, Lorg/antivirus/tuneup/t;->b:Landroid/widget/TextView;

    const v3, 0x7f0900ef

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v2, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, v1, Lorg/antivirus/tuneup/t;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-static {v6}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    invoke-static {v7}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :pswitch_b
    iget-object v0, v1, Lorg/antivirus/tuneup/t;->a:Landroid/widget/ImageView;

    const v2, 0x7f0200eb

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->b:Landroid/widget/TextView;

    const v2, 0x7f0900f1

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lorg/antivirus/tuneup/t;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->n(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_c
    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->h()Z

    move-result v0

    iget-object v2, v1, Lorg/antivirus/tuneup/t;->b:Landroid/widget/TextView;

    const v3, 0x7f0900f2

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v2, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, v1, Lorg/antivirus/tuneup/t;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-static {v5}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->a:Landroid/widget/ImageView;

    const v1, 0x7f02004f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_3
    const v0, 0x7f090108

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :pswitch_d
    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->o(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Z

    move-result v0

    iget-object v2, v1, Lorg/antivirus/tuneup/t;->b:Landroid/widget/TextView;

    const v3, 0x7f0900f3

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v2, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, v1, Lorg/antivirus/tuneup/t;->a:Landroid/widget/ImageView;

    const v3, 0x7f02002d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v1, Lorg/antivirus/tuneup/t;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-static {v6}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    invoke-static {v7}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :pswitch_e
    iget-object v0, v1, Lorg/antivirus/tuneup/t;->a:Landroid/widget/ImageView;

    const v2, 0x7f020063

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    iget-object v2, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v2}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->p(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->e:Landroid/widget/SeekBar;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->e:Landroid/widget/SeekBar;

    iget-object v2, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v2}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->q(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->e:Landroid/widget/SeekBar;

    new-instance v2, Lorg/antivirus/tuneup/s;

    invoke-direct {v2, p0}, Lorg/antivirus/tuneup/s;-><init>(Lorg/antivirus/tuneup/q;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->p(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->b:Landroid/widget/TextView;

    const v2, 0x7f0900f6

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->c:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->e:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, v1, Lorg/antivirus/tuneup/t;->b:Landroid/widget/TextView;

    const v2, 0x7f0900f5

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->e:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_f
    iget-object v0, v1, Lorg/antivirus/tuneup/t;->a:Landroid/widget/ImageView;

    const v2, 0x7f02010a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->b:Landroid/widget/TextView;

    const v2, 0x7f0900f4

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lorg/antivirus/tuneup/t;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0001

    invoke-static {v0}, Lorg/antivirus/Strings;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v2}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->r(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)I

    move-result v2

    aget-object v0, v0, v2

    goto/16 :goto_2

    :pswitch_10
    iget-object v0, v1, Lorg/antivirus/tuneup/t;->a:Landroid/widget/ImageView;

    const v2, 0x7f020106

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->b:Landroid/widget/TextView;

    const v2, 0x7f090109

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lorg/antivirus/tuneup/t;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->s(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_11
    iget-object v0, v1, Lorg/antivirus/tuneup/t;->a:Landroid/widget/ImageView;

    const v2, 0x7f020135

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->b:Landroid/widget/TextView;

    const v2, 0x7f0900f7

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/antivirus/tuneup/t;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_12
    iget-object v0, p0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->t(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)Z

    move-result v0

    iget-object v2, v1, Lorg/antivirus/tuneup/t;->a:Landroid/widget/ImageView;

    const v3, 0x7f02004e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v1, Lorg/antivirus/tuneup/t;->b:Landroid/widget/TextView;

    const v3, 0x7f0900f8

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v2, v1, Lorg/antivirus/tuneup/t;->d:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, v1, Lorg/antivirus/tuneup/t;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-static {v5}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_6
    const v0, 0x7f090108

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xb
        :pswitch_9
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final isEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
