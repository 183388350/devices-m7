.class Landroid/text/method/CharacterPickerDialog$OptionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "CharacterPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/CharacterPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/text/method/CharacterPickerDialog;


# direct methods
.method public constructor <init>(Landroid/text/method/CharacterPickerDialog;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    iput-object p1, p0, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/CharacterPickerDialog;

    .line 132
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 133
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/CharacterPickerDialog;

    # getter for: Landroid/text/method/CharacterPickerDialog;->mOptions:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/method/CharacterPickerDialog;->access$000(Landroid/text/method/CharacterPickerDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 148
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/CharacterPickerDialog;

    # getter for: Landroid/text/method/CharacterPickerDialog;->mOptions:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/method/CharacterPickerDialog;->access$000(Landroid/text/method/CharacterPickerDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 152
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 136
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/CharacterPickerDialog;

    iget-object v1, v1, Landroid/text/method/CharacterPickerDialog;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109003b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 138
    .local v0, "b":Landroid/widget/Button;
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/CharacterPickerDialog;

    # getter for: Landroid/text/method/CharacterPickerDialog;->mOptions:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/method/CharacterPickerDialog;->access$000(Landroid/text/method/CharacterPickerDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-object v0
.end method
