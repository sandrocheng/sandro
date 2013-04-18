.class public Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;
.super Landroid/app/Activity;
.source "TrafficZiFeiSettingActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final r:I = 0x12c


# instance fields
.field private a:Landroid/widget/Spinner;

.field private b:Landroid/widget/Spinner;

.field private c:Landroid/widget/Spinner;

.field private d:Landroid/widget/Spinner;

.field private e:Ljava/util/ArrayList;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/ArrayList;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/ArrayList;

.field private l:Ljava/lang/String;

.field private m:Lcom/keniu/security/traffic/y;

.field private n:Lcom/keniu/security/util/SafeViewFlipper;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private s:Landroid/widget/EditText;

.field private t:Landroid/widget/TextView;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    iput-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->u:Z

    .line 64
    iput-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->v:Z

    .line 65
    iput-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->w:Z

    .line 66
    iput-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->x:Z

    .line 67
    iput-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->y:Z

    return-void
.end method

.method private a()V
    .locals 9

    .prologue
    const v8, 0x7f0803c4

    const/4 v7, 0x0

    const v6, 0x7f03010e

    const v5, 0x7f020061

    const/4 v4, 0x1

    .line 103
    invoke-virtual {p0, v8}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->t:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f0803fe

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v0, 0x7f0803fd

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f0803c6

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f0803c5

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v0, 0x7f0803c7

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f0803f9

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->a:Landroid/widget/Spinner;

    .line 115
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 125
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 127
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->a:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 128
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v1, v1, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->a:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 131
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->f:Ljava/lang/String;

    .line 132
    iput-boolean v4, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->u:Z

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->a:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 138
    const v0, 0x7f0803fa

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->b:Landroid/widget/Spinner;

    .line 139
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcn/com/wali/zft/plugin;->getcities(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->g:Ljava/util/ArrayList;

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    :cond_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 153
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 154
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->b:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 155
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v1, v1, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 156
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->b:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 157
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->h:Ljava/lang/String;

    .line 158
    iput-boolean v4, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->v:Z

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 164
    const v0, 0x7f0803fb

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->c:Landroid/widget/Spinner;

    .line 165
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 173
    :cond_4
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 175
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 177
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->c:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 178
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 179
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v1, v1, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->c:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 181
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->j:Ljava/lang/String;

    .line 182
    iput-boolean v4, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->w:Z

    .line 187
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->c:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 189
    const v0, 0x7f0803fc

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->d:Landroid/widget/Spinner;

    .line 191
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 193
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v7

    invoke-static {v0}, Lcn/com/wali/zft/plugin;->getbrands(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->k:Ljava/util/ArrayList;

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 201
    :cond_6
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 203
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 204
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->d:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 205
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v1, v1, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 206
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->d:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 207
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->l:Ljava/lang/String;

    .line 208
    iput-boolean v4, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->x:Z

    .line 211
    :cond_7
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 213
    const v0, 0x7f0803c3

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->s:Landroid/widget/EditText;

    .line 215
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 216
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->s:Landroid/widget/EditText;

    iget-wide v2, v0, Lcom/keniu/security/traffic/y;->d:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_8
    const v0, 0x7f080165

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 222
    invoke-virtual {p0, v8}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 223
    const-string v2, "M"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {v0, v7}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 225
    new-instance v2, Lcom/keniu/security/traffic/eq;

    invoke-direct {v2, p0, v1}, Lcom/keniu/security/traffic/eq;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 237
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 399
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->y:Z

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "18"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 405
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    .line 408
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 411
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 412
    iput-object v0, v1, Lcom/keniu/security/traffic/y;->p:Ljava/lang/String;

    .line 413
    if-eqz v0, :cond_1

    .line 414
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 415
    const v0, 0x7f0b03c9

    invoke-virtual {v1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 420
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(Landroid/content/Context;)V

    .line 421
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 422
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->f:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->e(Ljava/lang/String;)V

    .line 431
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->f:Ljava/lang/String;

    iput-object v0, v1, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    .line 432
    const v0, 0x7f0b03cb

    invoke-virtual {v1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 434
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->h:Ljava/lang/String;

    iput-object v0, v1, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    .line 435
    const v0, 0x7f0b03cc

    invoke-virtual {v1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 438
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->j:Ljava/lang/String;

    iput-object v0, v1, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    .line 439
    const v0, 0x7f0b03cd

    invoke-virtual {v1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 441
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->l:Ljava/lang/String;

    iput-object v0, v1, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    .line 442
    const v0, 0x7f0b03ce

    invoke-virtual {v1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 445
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->q:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 446
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f0b08f8

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f0b08f9

    new-instance v2, Lcom/keniu/security/traffic/et;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/et;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f0b08fa

    new-instance v2, Lcom/keniu/security/traffic/es;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/es;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 476
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 477
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->o:Ljava/lang/String;

    const-string v1, "RatesRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 478
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->setResult(I)V

    .line 479
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->finish()V

    .line 484
    :cond_4
    :goto_1
    return-void

    .line 425
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->f:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->h:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 481
    :cond_6
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->c()V

    goto :goto_1
.end method

.method private c()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x12c

    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 571
    iget-object v9, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->n:Lcom/keniu/security/util/SafeViewFlipper;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f80

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v0}, Lcom/keniu/security/util/SafeViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 572
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->n:Lcom/keniu/security/util/SafeViewFlipper;

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x4080

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    move v9, v1

    move v10, v4

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v2, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/SafeViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 573
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->n:Lcom/keniu/security/util/SafeViewFlipper;

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->showNext()V

    .line 574
    return-void
.end method

.method private static d()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 582
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f80

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 587
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 588
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 589
    return-object v0
.end method

.method private static e()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 598
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x4080

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 603
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 604
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 605
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x400

    const/4 v5, 0x1

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 244
    :sswitch_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    const-string v0, "\u8bf7\u9009\u62e9\u6240\u5728\u7701\u5e02"

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    const-string v0, "\u8bf7\u9009\u62e9\u6240\u5728\u5e02"

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    const-string v0, "\u8bf7\u9009\u62e9\u8fd0\u8425\u5546"

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 257
    const-string v0, "\u8bf7\u9009\u62e9\u54c1\u724c"

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 261
    :cond_4
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->y:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "18"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/keniu/security/traffic/y;->p:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x7f0b03c9

    invoke-virtual {v1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    :cond_6
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->f:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->e(Ljava/lang/String;)V

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->f:Ljava/lang/String;

    iput-object v0, v1, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const v0, 0x7f0b03cb

    invoke-virtual {v1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->h:Ljava/lang/String;

    iput-object v0, v1, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    const v0, 0x7f0b03cc

    invoke-virtual {v1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->j:Ljava/lang/String;

    iput-object v0, v1, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    const v0, 0x7f0b03cd

    invoke-virtual {v1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->l:Ljava/lang/String;

    iput-object v0, v1, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    const v0, 0x7f0b03ce

    invoke-virtual {v1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->q:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f0b08f8

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f0b08f9

    new-instance v2, Lcom/keniu/security/traffic/et;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/et;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f0b08fa

    new-instance v2, Lcom/keniu/security/traffic/es;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/es;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    :cond_8
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->o:Ljava/lang/String;

    const-string v1, "RatesRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v9}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->setResult(I)V

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->finish()V

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->f:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->h:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->c()V

    goto/16 :goto_0

    .line 266
    :sswitch_1
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->y:Z

    if-eqz v0, :cond_b

    .line 268
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "19"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 272
    :cond_b
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->o:Ljava/lang/String;

    const-string v1, "RatesRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 274
    invoke-virtual {p0, v4}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->setResult(I)V

    .line 275
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->finish()V

    goto/16 :goto_0

    .line 277
    :cond_c
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->c()V

    goto/16 :goto_0

    .line 282
    :sswitch_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->s:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 283
    const-string v0, "\u8bf7\u8f93\u5165\u6d41\u91cf\u5957\u9910\u989d\u5ea6"

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 289
    :cond_d
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->y:Z

    if-eqz v0, :cond_e

    .line 291
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "21"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 295
    :cond_e
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->s:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 298
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v2

    .line 301
    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->t:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    mul-long/2addr v0, v6

    mul-long/2addr v0, v6

    :goto_2
    iput-wide v0, v2, Lcom/keniu/security/traffic/y;->d:J

    .line 304
    const v0, 0x7f0b03c3

    invoke-virtual {v2, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 306
    invoke-static {p0, v8}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/core/b;)V

    .line 309
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->p:Z

    if-eqz v0, :cond_10

    .line 310
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 311
    const-class v1, Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 313
    iget-object v1, v2, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v2, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v2, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v2, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 317
    const-string v1, "updateZFT"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 318
    :cond_f
    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->startActivity(Landroid/content/Intent;)V

    .line 320
    :cond_10
    invoke-virtual {p0, v9}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->setResult(I)V

    .line 321
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->finish()V

    goto/16 :goto_0

    .line 301
    :cond_11
    mul-long/2addr v0, v6

    mul-long/2addr v0, v6

    mul-long/2addr v0, v6

    goto :goto_2

    .line 327
    :sswitch_3
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->y:Z

    if-eqz v0, :cond_12

    .line 329
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "22"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 333
    :cond_12
    invoke-virtual {p0, v4}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->setResult(I)V

    .line 334
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->finish()V

    .line 335
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->p:Z

    if-eqz v0, :cond_0

    .line 336
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 337
    const-class v1, Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 339
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v1, v1, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v1, v1, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v1, v1, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v1, v1, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 343
    const-string v1, "updateZFT"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 344
    :cond_13
    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 349
    :sswitch_4
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 351
    const v1, 0x7f030028

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 352
    const v0, 0x7f0800ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 354
    invoke-static {p0}, Lcom/keniu/security/traffic/as;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 357
    new-instance v2, Lcom/keniu/security/util/aq;

    invoke-direct {v2, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 359
    const v3, 0x7f0b02b4

    invoke-virtual {v2, v3}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 360
    invoke-virtual {v2, v1}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 361
    const v1, 0x7f0b02b6

    new-instance v3, Lcom/keniu/security/traffic/er;

    invoke-direct {v3, p0, v0}, Lcom/keniu/security/traffic/er;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;Landroid/widget/EditText;)V

    invoke-virtual {v2, v1, v3}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 390
    const v0, 0x7f0b03aa

    invoke-virtual {v2, v0, v8}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 391
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto/16 :goto_0

    .line 241
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0803c5 -> :sswitch_4
        0x7f0803c6 -> :sswitch_2
        0x7f0803c7 -> :sswitch_3
        0x7f0803fd -> :sswitch_1
        0x7f0803fe -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f0803c4

    const v7, 0x7f03010e

    const v5, 0x7f020061

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 72
    invoke-virtual {p0, v4}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->requestWindowFeature(I)Z

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f03011b

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    const-string v1, "context"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->o:Ljava/lang/String;

    .line 80
    const-string v1, "fromMain"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->p:Z

    .line 81
    const-string v1, "fromSIMChange"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->q:Z

    .line 83
    const-string v1, "first"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->y:Z

    .line 84
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->y:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "first"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "17"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    :cond_0
    const v0, 0x7f0803ff

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/util/SafeViewFlipper;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->n:Lcom/keniu/security/util/SafeViewFlipper;

    .line 94
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    .line 95
    invoke-static {}, Lcn/com/wali/zft/plugin;->getprovinces()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->e:Ljava/util/ArrayList;

    .line 96
    invoke-static {}, Lcn/com/wali/zft/plugin;->getcarries()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->i:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {p0, v8}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->t:Landroid/widget/TextView;

    const v0, 0x7f0803fe

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803fd

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803c6

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803c5

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803c7

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803f9

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->a:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v7, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->a:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v1, v1, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->a:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->f:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->u:Z

    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->a:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0803fa

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->b:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcn/com/wali/zft/plugin;->getcities(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->g:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v7, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->b:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v1, v1, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->b:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->h:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->v:Z

    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0803fb

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->c:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v7, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->c:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v1, v1, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->c:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->j:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->w:Z

    :cond_6
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->c:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0803fc

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->d:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-static {v0}, Lcn/com/wali/zft/plugin;->getbrands(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->k:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v7, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->d:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->m:Lcom/keniu/security/traffic/y;

    iget-object v1, v1, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->d:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->l:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->x:Z

    :cond_8
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0803c3

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->s:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/keniu/security/traffic/y;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->s:Landroid/widget/EditText;

    iget-wide v2, v0, Lcom/keniu/security/traffic/y;->d:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    const v0, 0x7f080165

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {p0, v8}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "M"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    new-instance v2, Lcom/keniu/security/traffic/eq;

    invoke-direct {v2, p0, v1}, Lcom/keniu/security/traffic/eq;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 99
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0x7f03010e

    const v6, 0x7f020061

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 489
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 492
    :pswitch_0
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->u:Z

    if-nez v0, :cond_2

    .line 493
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->a:Landroid/widget/Spinner;

    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 494
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->f:Ljava/lang/String;

    .line 495
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcn/com/wali/zft/plugin;->getcities(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->g:Ljava/util/ArrayList;

    .line 498
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 500
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 501
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 504
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v7, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 506
    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 507
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->b:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 508
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 509
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 510
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->h:Ljava/lang/String;

    goto :goto_0

    .line 513
    :cond_2
    iput-boolean v4, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->u:Z

    goto :goto_0

    .line 518
    :pswitch_1
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->v:Z

    if-nez v0, :cond_3

    .line 519
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 520
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->h:Ljava/lang/String;

    goto/16 :goto_0

    .line 522
    :cond_3
    iput-boolean v4, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->v:Z

    goto/16 :goto_0

    .line 527
    :pswitch_2
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->w:Z

    if-nez v0, :cond_5

    .line 528
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->c:Landroid/widget/Spinner;

    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 529
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->j:Ljava/lang/String;

    .line 530
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v0}, Lcn/com/wali/zft/plugin;->getbrands(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->k:Ljava/util/ArrayList;

    .line 533
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 535
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 536
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 539
    :cond_4
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v7, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 542
    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 544
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->d:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto/16 :goto_0

    .line 547
    :cond_5
    iput-boolean v4, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->w:Z

    goto/16 :goto_0

    .line 552
    :pswitch_3
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->x:Z

    if-nez v0, :cond_6

    .line 553
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 554
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->l:Ljava/lang/String;

    goto/16 :goto_0

    .line 556
    :cond_6
    iput-boolean v4, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->x:Z

    goto/16 :goto_0

    .line 489
    nop

    :pswitch_data_0
    .packed-switch 0x7f0803f9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 610
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 611
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->y:Z

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "20"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 617
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 568
    return-void
.end method
